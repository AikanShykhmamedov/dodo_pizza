// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      id: json['id'] as String,
      uuId: json['uuId'] as String,
      name: json['name'] as String,
      order: json['order'] as int,
      isTop: json['isTop'] as bool,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'uuId': instance.uuId,
      'name': instance.name,
      'order': instance.order,
      'isTop': instance.isTop,
    };
