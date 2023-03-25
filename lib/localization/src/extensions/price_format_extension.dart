import 'package:intl/intl.dart';

import '../generated/l10n.dart';

typedef Translate = String Function(Object value);

extension PriceFormatExtension on S {
  String preformatPrice(num price, Translate Function(S s) callback) {
    final formattedPrice = NumberFormat(pricePattern).format(price);
    final translate = callback(this);
    return translate(formattedPrice);
  }
}
