import 'package:dodo_pizza/region/region.dart';

import '../apis/menu_local_storage_api.dart';
import '../apis/menu_storage_api.dart';
import '../models/menu_offer.dart';
import '../models/product.dart';

class MenuRepository {
  MenuRepository({
    MenuStorageApi storageApi = const MenuLocalStorageApi(),
  }) : _storageApi = storageApi;

  final MenuStorageApi _storageApi;

  var _offersById = <String, MenuOffer>{};
  var _productsById = <String, Product>{};

  Iterable<MenuOffer> get offers => _offersById.values;

  MenuOffer getOfferById(String id) {
    return _offersById[id]!;
  }

  Product getProductById(String id) {
    return _productsById[id]!;
  }

  Iterable<T> getProductsById<T extends Product>(Iterable<String> ids) {
    return ids.map<T>((id) => _productsById[id]! as T);
  }

  Future<void> load(Country country) async {
    final menu = await _storageApi.load(country);

    final offers = (menu['offers'] as List) //
        .cast<Map<String, dynamic>>()
        .map(MenuOffer.fromJson);
    final products = (menu['products'] as List) //
        .cast<Map<String, dynamic>>()
        .map(Product.resolveFromJson);

    _offersById = <String, MenuOffer>{
      for (final offer in offers) //
        offer.id: offer,
    };
    _productsById = <String, Product>{
      for (final product in products) //
        product.id: product,
    };
  }
}
