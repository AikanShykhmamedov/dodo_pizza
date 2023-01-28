import 'dart:convert';

import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/region/region.dart';
import 'package:flutter/services.dart';

import 'menu_storage_api.dart';

class MenuLocalStorageApi extends MenuStorageApi {
  const MenuLocalStorageApi();

  @override
  Future<Map<String, dynamic>> load(Country country) async {
    final String raw;
    if (country.isoName == 'RU') {
      raw = await rootBundle.loadString(AppAssets.menuRu);
    } else {
      raw = await rootBundle.loadString(AppAssets.menuUk);
    }

    return jsonDecode(raw) as Map<String, dynamic>;
  }
}
