import 'package:freezed_annotation/freezed_annotation.dart';

part 'combo_slot_product.freezed.dart';

part 'combo_slot_product.g.dart';

@freezed
class ComboSlotProduct with _$ComboSlotProduct {
  const factory ComboSlotProduct({
    required String productId,
    required int priority,
    required num price,
    required num extraPrice,
  }) = _ComboSlotProduct;

  factory ComboSlotProduct.fromJson(Map<String, dynamic> json) => _$ComboSlotProductFromJson(json);
}
