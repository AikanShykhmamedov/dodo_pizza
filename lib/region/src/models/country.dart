import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country(
    String name,
    String isoName,
    int code,
    int order,
  ) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}
