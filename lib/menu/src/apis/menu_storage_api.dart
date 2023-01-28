import 'package:dodo_pizza/region/region.dart';

abstract class MenuStorageApi {
  const MenuStorageApi();

  Future<Map<String, dynamic>> load(Country country);
}
