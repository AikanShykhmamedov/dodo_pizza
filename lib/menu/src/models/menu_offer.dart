import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'product_size.dart';
import 'shopping_item.dart';

part 'menu_offer.freezed.dart';

part 'menu_offer.g.dart';

@freezed
class MenuOffer with _$MenuOffer implements Comparable<MenuOffer> {
  const MenuOffer._();

  const factory MenuOffer({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    required int priority,
    required Category category,
    required ProductSize? size,
    required List<ShoppingItem> shoppingItems,
  }) = _MenuOffer;

  factory MenuOffer.fromJson(Map<String, dynamic> json) => _$MenuOfferFromJson(json);

  bool get isPizza => category == Category.pizza;

  bool get isCombo => category == Category.combo;

  @override
  int compareTo(MenuOffer other) {
    return priority.compareTo(other.priority);
  }
}
