import 'package:freezed_annotation/freezed_annotation.dart';

import 'combo_slot_product.dart';

part 'combo_slot.freezed.dart';

part 'combo_slot.g.dart';

@freezed
class ComboSlot with _$ComboSlot {
  const ComboSlot._();

  const factory ComboSlot({
    required String defaultProductId,
    required List<ComboSlotProduct> products,
  }) = _ComboSlot;

  factory ComboSlot.fromJson(Map<String, dynamic> json) => _$ComboSlotFromJson(json);

  ComboSlotProduct get defaultProduct => products.firstWhere(
        (product) => product.productId == defaultProductId,
      );
}
