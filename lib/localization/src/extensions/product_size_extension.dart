import 'package:dodo_pizza/menu/menu.dart';

import '../generated/l10n.dart';

extension ProductSizeExtension on S {
  String menuOfferProductSize(ProductSize size) {
    switch (size.measure) {
      case Measure.weight:
        return menuOfferWeightCount(size.value);
      case Measure.volume:
        return menuOfferVolumeCount(size.value);
      case Measure.piece:
        return menuOfferPieceCount(size.value);
      case Measure.diameter:
        final diameter = _diameters[size.value]!;
        return menuOfferDiameterName(diameter);
    }
  }

  String menuOfferProductSizeFull(ProductSize size) {
    switch (size.measure) {
      case Measure.diameter:
        final diameter = _diameters[size.value]!;
        return menuOfferDiameterFullName(diameter);
      default:
        return menuOfferProductSize(size);
    }
  }
}

const _diameters = {
  0: 'small',
  1: 'medium',
  2: 'large',
};
