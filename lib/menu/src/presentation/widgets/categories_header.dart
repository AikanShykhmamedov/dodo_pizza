import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoriesHeader extends StatelessWidget {
  const CategoriesHeader({
    super.key,
    required this.selectedIndex,
    required this.categoryLabels,
    required this.onSelected,
  });

  final int selectedIndex;
  final List<String> categoryLabels;
  final void Function(int) onSelected;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _CategoriesHeaderDelegate(
        selectedIndex: selectedIndex,
        categoryLabels: categoryLabels,
        onSelected: onSelected,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('selectedIndex', selectedIndex));
    properties.add(IterableProperty<String>('categoryLabels', categoryLabels));
    properties.add(DiagnosticsProperty<Function>('onSelected', onSelected));
  }
}

class _CategoriesHeaderDelegate extends SliverPersistentHeaderDelegate {
  const _CategoriesHeaderDelegate({
    required this.selectedIndex,
    required this.categoryLabels,
    required this.onSelected,
  });

  final int selectedIndex;
  final List<String> categoryLabels;
  final void Function(int) onSelected;

  @override
  double get maxExtent => 56;

  @override
  double get minExtent => 56;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      color: Theme.of(context).appBarTheme.backgroundColor,
      elevation: shrinkOffset > 0 ? 2 : 0,
      shadowColor: Theme.of(context).colorScheme.shadow,
      child: SizedBox(
        height: maxExtent,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: List.generate(
                categoryLabels.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    label: Text(categoryLabels[index]),
                    onSelected: (select) => _onSelected(select, index),
                    selected: index == selectedIndex,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onSelected(bool isSelected, int index) {
    if (isSelected) {
      onSelected(index);
    }
  }

  @override
  bool shouldRebuild(covariant _CategoriesHeaderDelegate oldDelegate) {
    return selectedIndex != oldDelegate.selectedIndex ||
        categoryLabels != oldDelegate.categoryLabels ||
        onSelected != oldDelegate.onSelected;
  }
}
