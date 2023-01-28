// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductSize _$$_ProductSizeFromJson(Map<String, dynamic> json) =>
    _$_ProductSize(
      measure: $enumDecode(_$MeasureEnumMap, json['measure']),
      value: json['value'] as num,
    );

Map<String, dynamic> _$$_ProductSizeToJson(_$_ProductSize instance) =>
    <String, dynamic>{
      'measure': _$MeasureEnumMap[instance.measure]!,
      'value': instance.value,
    };

const _$MeasureEnumMap = {
  Measure.weight: 0,
  Measure.volume: 1,
  Measure.piece: 2,
  Measure.diameter: 3,
};
