import 'package:freezed_annotation/freezed_annotation.dart';

import 'measure.dart';

part 'product_size.freezed.dart';

part 'product_size.g.dart';

@freezed
class ProductSize with _$ProductSize implements Comparable<ProductSize> {
  const ProductSize._();

  const factory ProductSize({
    required Measure measure,
    required num value,
  }) = _ProductSize;

  factory ProductSize.fromJson(Map<String, dynamic> json) => _$ProductSizeFromJson(json);

  @override
  int compareTo(ProductSize other) {
    return value.compareTo(other.value);
  }
}
