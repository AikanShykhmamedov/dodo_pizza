// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      name: json['name'] as String,
      isoName: json['isoName'] as String,
      code: json['code'] as int,
      order: json['order'] as int,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isoName': instance.isoName,
      'code': instance.code,
      'order': instance.order,
    };
