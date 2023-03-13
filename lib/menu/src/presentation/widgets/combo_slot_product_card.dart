import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/pizza_cubit.dart';
import '../../blocs/product_cubit.dart';
import '../../blocs/single_product_cubit.dart';
import '../../models/combo_slot_group_item.dart';
import '../../models/product_bundle.dart';
import 'combo_slot_pizza_card.dart';
import 'combo_slot_single_product_card.dart';

class ComboSlotProductCard extends StatefulWidget {
  const ComboSlotProductCard({
    super.key,
    required this.group,
    required this.selectedBundle,
    required this.onBundleSelect,
  });

  final ComboSlotGroup group;
  final SingleProductBundle? selectedBundle;
  final void Function(SingleProductBundle) onBundleSelect;

  @override
  State<ComboSlotProductCard> createState() => _ComboSlotProductCardState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<ComboSlotGroupItem>('group', group));
    properties.add(DiagnosticsProperty<SingleProductBundle?>('selectedBundle', selectedBundle));
    properties.add(DiagnosticsProperty<Function>('onBundleSelect', onBundleSelect));
  }
}

class _ComboSlotProductCardState extends State<ComboSlotProductCard> {
  late final ProductCubit _productCubit;

  @override
  void initState() {
    super.initState();

    if (widget.group.isPizzaGroup) {
      _productCubit =
          PizzaCubit.forComboSlotGroup(widget.group, widget.selectedBundle as PizzaBundle?);
    } else {
      _productCubit = SingleProductCubit.fromComboSlotGroup(widget.group, widget.selectedBundle);
    }
  }

  @override
  void dispose() {
    _productCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _productCubit.map<Widget>(
      singleProduct: (cubit) => BlocProvider<SingleProductCubit>.value(
        value: cubit,
        child: ComboSlotSingleProductCard(
          selectedBundle: widget.selectedBundle,
          onSelect: widget.onBundleSelect,
        ),
      ),
      pizza: (cubit) => BlocProvider<PizzaCubit>.value(
        value: cubit,
        child: ComboSlotPizzaCard(
          selectedBundle: widget.selectedBundle as PizzaBundle?,
          onSelect: widget.onBundleSelect,
        ),
      ),
      combo: (cubit) => throw Exception(),
    );
  }
}
