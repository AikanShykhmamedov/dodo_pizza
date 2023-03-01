import 'package:dodo_pizza/menu/menu.dart';

import '../generated/l10n.dart';

// ignore_for_file: non_constant_identifier_names

extension ProductSizeExtension on S {
  String menu_offer_product_size(ProductSize size) {
    switch (size.measure) {
      case Measure.weight:
        return menu_offer_weight_count(size.value);
      case Measure.volume:
        return menu_offer_volume_count(size.value);
      case Measure.piece:
        return menu_offer_piece_count(size.value);
      case Measure.diameter:
        final diameter = _diameters[size.value]!;
        return menu_offer_diameter_name(diameter);
    }
  }

  String menu_offer_product_size_full(ProductSize size) {
    switch (size.measure) {
      case Measure.diameter:
        final diameter = _diameters[size.value]!;
        return menu_offer_diameter_full_name(diameter);
      default:
        return menu_offer_product_size(size);
    }
  }
}

const _diameters = {
  0: 'small',
  1: 'medium',
  2: 'large',
};
