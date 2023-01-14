import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/region_cubit.dart';
import 'models/country.dart';
import 'models/region.dart';
import 'presentation/cities_screen.dart';
import 'presentation/countries_screen.dart';

Future<void> selectRegion(BuildContext context) async {
  final regionCubit = BlocProvider.of<RegionCubit>(context);
  final currentRegion = regionCubit.state;

  Country? country;

  if (currentRegion == null) {
    country = await Navigator.push<Country>(
      context,
      CountriesScreen.route(canPop: false),
    );
  }

  // ignore: use_build_context_synchronously
  final region = await Navigator.push<Region>(
    context,
    CitiesScreen.route(
      country: currentRegion?.country ?? country!,
      city: currentRegion?.city,
    ),
  );

  if (region != null) {
    regionCubit.setRegion(region);
  }
}
