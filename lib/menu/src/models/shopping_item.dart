import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_item.freezed.dart';

part 'shopping_item.g.dart';

@freezed
class ShoppingItem with _$ShoppingItem {
  const factory ShoppingItem({
    required String productId,
    required num price,
  }) = _ShoppingItem;

  factory ShoppingItem.fromJson(Map<String, dynamic> json) => _$ShoppingItemFromJson(json);
}
