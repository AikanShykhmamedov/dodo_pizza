import 'package:dodo_pizza/app/app_constants.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/combo_slot_group_item.dart';
import '../../models/product_bundle.dart';
import '../widgets/combo_slot_product_card.dart';

class ComboSlotDialog extends StatefulWidget {
  const ComboSlotDialog({
    super.key,
    required this.animation,
    required this.groups,
    required this.selectedBundle,
  });

  final Animation<double> animation;
  final List<ComboSlotGroup> groups;
  final SingleProductBundle selectedBundle;

  @override
  State<ComboSlotDialog> createState() => _ComboSlotDialogState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<ComboSlotGroup>('groups', groups));
    properties.add(DiagnosticsProperty<SingleProductBundle>('selectedBundle', selectedBundle));
  }
}

class _ComboSlotDialogState extends State<ComboSlotDialog> {
  late final PageController _pageController;
  late final ValueNotifier<int> _currentPage;

  @override
  void initState() {
    super.initState();

    final initialPage = widget.groups.indexWhere((e) => e //
        .map<String>((e) => e.product.id)
        .contains(widget.selectedBundle.product.id));

    _pageController = PageController(initialPage: initialPage, viewportFraction: 0.75);
    _currentPage = ValueNotifier(initialPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currentPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pageBar = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 24),
        ValueListenableBuilder<int>(
          valueListenable: _currentPage,
          builder: (context, page, child) => Text(
            S.of(context).menu_offer_combo_slot_dialog_page_of(1 + page, widget.groups.length),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onInverseSurface,
                ),
          ),
        ),
        IgnorePointer(
          child: Icon(
            Icons.close_rounded,
            color: Theme.of(context).colorScheme.onInverseSurface,
          ),
        )
      ],
    );

    final cards = PageView.builder(
      controller: _pageController,
      onPageChanged: _onPageChanged,
      clipBehavior: Clip.none,
      itemCount: widget.groups.length,
      itemBuilder: (context, index) {
        final group = widget.groups[index];
        final isSelected = index == _pageController.initialPage;

        final child = Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ComboSlotProductCard(
            group: group,
            selectedBundle: isSelected ? widget.selectedBundle : null,
            onBundleSelect: (bundle) => _onBundleSelect(context, bundle),
          ),
        );

        if (widget.animation.status == AnimationStatus.reverse ||
            widget.animation.status == AnimationStatus.dismissed) {
          return child;
        }

        if (index == _pageController.initialPage) {
          return _SelectedCardInTransition(
            animation: widget.animation,
            child: child,
          );
        } else {
          return FadeTransition(
            opacity: widget.animation,
            child: child,
          );
        }
      },
    );

    return SafeArea(
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: pageBar,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: cards,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  void _onPageChanged(int index) {
    _currentPage.value = index;
  }

  void _onBundleSelect(BuildContext context, SingleProductBundle bundle) {
    Navigator.pop(context, bundle);
  }
}

class _SelectedCardInTransition extends StatelessWidget {
  _SelectedCardInTransition({
    super.key,
    required this.animation,
    required this.child,
  });

  final Animation<double> animation;
  final Widget child;

  final _scaleTween = Matrix4Tween(
    begin: Matrix4.diagonal3Values(1.2, 0.5, 1),
    end: Matrix4.identity(),
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Opacity(
        opacity: animation.value,
        child: Transform(
          transform: _scaleTween.evaluate(animation),
          alignment: Alignment.center,
          child: child,
        ),
      ),
      child: child,
    );
  }
}

Future<SingleProductBundle?> showComboSlotDialog({
  required BuildContext context,
  required List<ComboSlotGroup> groups,
  required SingleProductBundle selectedBundle,
}) {
  return showGeneralDialog<SingleProductBundle>(
    context: context,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierDismissible: true,
    pageBuilder: (context, animation, _) => ComboSlotDialog(
      animation: animation,
      groups: groups,
      selectedBundle: selectedBundle,
    ),
    transitionDuration: AppAnimationDurations.standard,
    transitionBuilder: (context, animation, _, child) {
      if (animation.status == AnimationStatus.forward ||
          animation.status == AnimationStatus.completed) {
        return child;
      }

      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}
