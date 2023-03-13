import 'package:equatable/equatable.dart';

import 'category.dart';
import 'product.dart';

typedef ComboSlotGroup = List<ComboSlotGroupItem>;

class ComboSlotGroupItem extends Equatable {
  const ComboSlotGroupItem({
    required this.product,
    required this.extraPrice,
  });

  final SingleProduct product;
  final num extraPrice;

  @override
  List<Object> get props => [product, extraPrice];
}

extension ComboSlotGroupExtension on ComboSlotGroup {
  bool get isPizzaGroup => first.product.category == Category.pizza;
}
