// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Region _$$_RegionFromJson(Map<String, dynamic> json) => _$_Region(
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      city: City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegionToJson(_$_Region instance) => <String, dynamic>{
      'country': instance.country,
      'city': instance.city,
    };
