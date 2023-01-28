import 'dart:math';

import 'package:dodo_pizza/app/app_colors.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:dodo_pizza/region/region.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/category.dart';
import '../models/menu_offer.dart';
import '../models/product.dart';
import '../repositories/menu_repository.dart';
import 'widgets/categories_header.dart';
import 'widgets/menu_offer_item.dart';

// TODO: When pressed on the bottom navigator bar item, scroll to top
class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final _currentCategoryIndex = ValueNotifier<int>(0);

  late final MenuRepository _menuRepository;
  late final Map<Category, List<MenuOffer>> _categoryOffers;

  @override
  void initState() {
    super.initState();

    _menuRepository = context.read<MenuRepository>();
    _categoryOffers = {};

    // Use Insertion Sort to improve performance
    for (final category in Category.values) {
      final offers = _menuRepository.offers //
          .where((offer) => offer.category == category)
          .toList();
      offers.sort((a, b) => -a.compareTo(b));
      _categoryOffers[category] = offers;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final appBar = AppBar(
      elevation: 0.0,
      toolbarHeight: 48,
      titleSpacing: 12,
      title: InkWell(
        onTap: () => _onCityPressed(context),
        splashColor: theme.colorScheme.primaryContainer,
        customBorder: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: BlocBuilder<RegionCubit, Region?>(
                  builder: (context, region) {
                    return Text(
                      region!.city.name,
                      style: theme.textTheme.labelSmall!.copyWith(
                        color: theme.extension<AppColors>()!.textSecondary,
                      ),
                    );
                  },
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: theme.extension<AppColors>()!.textSecondary,
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded),
        ),
      ],
    );

    final categoryLabels = _categoryOffers.keys //
        .map<String>(S.of(context).menu_category_name)
        .toList();

    final productTypesHeader = ValueListenableBuilder<int>(
      valueListenable: _currentCategoryIndex,
      builder: (context, index, _) => CategoriesHeader(
        selectedIndex: index,
        categoryLabels: categoryLabels,
        onSelected: _onCategorySelected,
      ),
    );

    final offerItems = <Widget>[];

    for (final category in _categoryOffers.keys) {
      final offers = _categoryOffers[category]!;

      for (var i = 0; i < offers.length; i++) {
        final offer = offers[i];

        final String price;
        if (offer.shoppingItems.length == 1) {
          final itemPrice = offer.shoppingItems.single.price;
          price = S.of(context).preformatPrice(itemPrice, (s) => s.price_count);
        } else {
          final minPrice = offer.shoppingItems.map<num>((e) => e.price).reduce(min);
          price = S.of(context).preformatPrice(minPrice, (s) => s.menu_price_from_count);
        }

        String? fullPrice;
        if (offer.isCombo) {
          final shoppingItem = offer.shoppingItems.single;
          // Is it performant?
          final combo = _menuRepository.getProductById(shoppingItem.productId) as Combo;
          // What if fullPrice is equal to price?
          fullPrice = S.of(context).preformatPrice(combo.fullPrice, (s) => s.price_count);
        }

        final item = MenuOfferItem(
          onPressed: () {},
          imageUrl: offer.imageUrl,
          name: offer.name,
          description: offer.description,
          price: price,
          fullPrice: fullPrice,
          onPricePressed: () {},
          isPromoted: i == 0,
        );

        offerItems.add(item);
      }
    }

    final menuOffersList = SliverList(
      delegate: SliverChildListDelegate.fixed(offerItems),
    );

    return Scaffold(
      appBar: appBar,
      body: CustomScrollView(
        slivers: [
          productTypesHeader,
          menuOffersList,
        ],
      ),
    );
  }

  void _onCityPressed(BuildContext context) {
    selectRegion(context);
  }

  void _onCategorySelected(int index) {
    _currentCategoryIndex.value = index;
  }
}
