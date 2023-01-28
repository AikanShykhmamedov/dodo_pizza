// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combo_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComboSlot _$$_ComboSlotFromJson(Map<String, dynamic> json) => _$_ComboSlot(
      defaultProductId: json['defaultProductId'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ComboSlotProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ComboSlotToJson(_$_ComboSlot instance) =>
    <String, dynamic>{
      'defaultProductId': instance.defaultProductId,
      'products': instance.products,
    };
