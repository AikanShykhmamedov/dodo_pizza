// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodValue _$$_FoodValueFromJson(Map<String, dynamic> json) => _$_FoodValue(
      fats: (json['fats'] as num).toDouble(),
      proteins: (json['proteins'] as num).toDouble(),
      carbohydrates: (json['carbohydrates'] as num).toDouble(),
      kilocalories: (json['kilocalories'] as num).toDouble(),
      weight: json['weight'] as String,
    );

Map<String, dynamic> _$$_FoodValueToJson(_$_FoodValue instance) =>
    <String, dynamic>{
      'fats': instance.fats,
      'proteins': instance.proteins,
      'carbohydrates': instance.carbohydrates,
      'kilocalories': instance.kilocalories,
      'weight': instance.weight,
    };
