import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_value.freezed.dart';

part 'food_value.g.dart';

@freezed
class FoodValue with _$FoodValue {
  const factory FoodValue({
    required double fats,
    required double proteins,
    required double carbohydrates,
    required double kilocalories,

    /// Weight of Product in grams.
    ///
    /// Can be empty.
    required String weight,
  }) = _FoodValue;

  factory FoodValue.fromJson(Map<String, dynamic> json) => _$FoodValueFromJson(json);
}
