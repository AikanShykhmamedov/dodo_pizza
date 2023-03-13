import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/combo_cubit.dart';
import '../../models/combo_slot.dart';
import '../../models/product.dart';
import '../dialogs/combo_slot_dialog.dart';
import 'combo_slot_card.dart';
import 'menu_offer_content_base.dart';
import 'prices_table.dart';

class MenuOfferComboContent extends StatelessWidget {
  const MenuOfferComboContent({super.key});

  @override
  Widget build(BuildContext context) {
    final bundle = context.watch<ComboCubit>().state.bundle;

    final slotItems = bundle.slotProductBundles.entries
        .expand<Widget>((entry) sync* {
          yield const SizedBox(height: 8);

          final slot = entry.key;
          final bundle = entry.value;

          final details = _getDetails(context, bundle.product);

          yield ComboSlotCard(
            imageUrl: bundle.product.imageUrl,
            name: bundle.product.name,
            details: details,
            removedIngredients: bundle.removedIngredients,
            selectedToppings: bundle.selectedToppings,
            extraPrice: bundle.price,
            onPressed: () => _onSlotPressed(context, slot),
          );
        })
        .skip(1)
        .toList();

    Widget? pricesTable;
    if (bundle.slotProductBundles.values.any((e) => e.price > 0)) {
      pricesTable = PricesTable(comboBundle: bundle);
    }

    return MenuOfferContentBase(
      imageUrl: bundle.product.imageUrl,
      name: bundle.product.name,
      description: bundle.product.description,
      products: bundle.slotProductBundles.values.map((e) => e.product),
      price: bundle.price,
      fullPrice: bundle.fullPrice,
      children: [
        const SizedBox(height: 16),
        ...slotItems,
        if (pricesTable != null)
          Padding(
            padding: const EdgeInsets.only(top: 16 + 8, bottom: 8),
            child: pricesTable,
          ),
      ],
    );
  }

  String? _getDetails(BuildContext context, SingleProduct product) {
    if (product is Pizza) {
      return S.of(context).pizza_details(product);
    } else if (product.size != null) {
      return S.of(context).menu_offer_product_size(product.size!);
    } else {
      return null;
    }
  }

  Future<void> _onSlotPressed(BuildContext context, ComboSlot slot) async {
    final cubit = context.read<ComboCubit>();
    final groups = cubit.getGroups(slot);
    final selectedBundle = cubit.state.bundle.slotProductBundles[slot]!;
    final product = await showComboSlotDialog(
      context: context,
      groups: groups,
      selectedBundle: selectedBundle,
    );

    if (product != null) {
      cubit.selectSlotProductBundle(slot, product);
    }
  }
}
