import 'package:auto_route/auto_route.dart';
import 'package:dodo_pizza/app/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/region_cubit.dart';
import 'models/country.dart';
import 'models/region.dart';

Future<void> selectRegion(BuildContext context) async {
  final regionCubit = BlocProvider.of<RegionCubit>(context);
  final currentRegion = regionCubit.state;

  Country? country;

  if (currentRegion == null) {
    country = await context.pushRoute<Country>(CountriesRoute(
      canPop: false,
    ));
  }

  // ignore: use_build_context_synchronously
  final region = await context.pushRoute<Region>(CitiesRoute(
    country: currentRegion?.country ?? country!,
    city: currentRegion?.city,
  ));

  if (region != null) {
    regionCubit.setRegion(region);
  }
}
