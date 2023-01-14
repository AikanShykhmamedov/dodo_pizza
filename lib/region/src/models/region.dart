import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';
import 'country.dart';

part 'region.freezed.dart';

part 'region.g.dart';

@freezed
class Region with _$Region {
  const factory Region({
    required Country country,
    required City city,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}
