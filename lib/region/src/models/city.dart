import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    required String id,
    required String uuId,
    required String name,
    required int order,
    required bool isTop,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
