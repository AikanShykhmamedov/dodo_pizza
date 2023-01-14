import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../models/region.dart';

class RegionCubit extends HydratedCubit<Region?> {
  RegionCubit() : super(null);

  bool get isRegionSet => state != null;

  void setRegion(Region region) {
    emit(region);
  }

  @override
  Region fromJson(Map<String, dynamic> json) => Region.fromJson(json);

  @override
  Map<String, dynamic>? toJson(Region? state) => state?.toJson();
}
