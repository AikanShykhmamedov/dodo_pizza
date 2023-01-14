import 'dart:convert';

import 'package:dodo_pizza/app/app_assets.dart';
import 'package:flutter/services.dart';

import '../models/city.dart';
import '../models/country.dart';

class RegionRepository {
  const RegionRepository();

  Future<List<Country>> loadCountries() async {
    final json = await rootBundle.loadString(AppAssets.countries);
    final jsonList = (jsonDecode(json) as List).cast<Map<String, dynamic>>();

    return jsonList.map(Country.fromJson).toList();
  }

  Future<List<City>> loadCities(int countryCode) async {
    final path = AppAssets.countryCities(countryCode);
    final json = await rootBundle.loadString(path);
    final jsonList = (jsonDecode(json) as List).cast<Map<String, dynamic>>();

    return jsonList.map(City.fromJson).toList();
  }
}
