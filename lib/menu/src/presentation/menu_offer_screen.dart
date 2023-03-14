import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/combo_cubit.dart';
import '../blocs/pizza_cubit.dart';
import '../blocs/product_cubit.dart';
import '../blocs/single_product_cubit.dart';
import '../repositories/menu_repository.dart';
import 'widgets/menu_offer_combo_content.dart';
import 'widgets/menu_offer_pizza_content.dart';
import 'widgets/menu_offer_single_product_content.dart';

class MenuOfferScreen extends StatefulWidget {
  const MenuOfferScreen({
    super.key,
    required this.offerId,
  });

  final String offerId;

  @override
  State<MenuOfferScreen> createState() => _MenuOfferScreenState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('offerId', offerId));
  }
}

class _MenuOfferScreenState extends State<MenuOfferScreen> {
  late final ProductCubit _productCubit;

  @override
  void initState() {
    super.initState();

    final repository = context.read<MenuRepository>();
    _productCubit = ProductCubit.resolve(
      offerId: widget.offerId,
      repository: repository,
    );
  }

  @override
  void dispose() {
    _productCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final backButton = Container(
      width: 40,
      height: 40,
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.surface,
        shape: const CircleBorder(),
        shadows: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            blurRadius: 8,
            spreadRadius: -2,
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        type: MaterialType.transparency,
        child: IconButton(
          onPressed: () => _onBackPressed(context),
          icon: const Icon(Icons.navigate_before_rounded),
        ),
      ),
    );

    final content = _productCubit.map<Widget>(
      singleProduct: (cubit) => BlocProvider<SingleProductCubit>.value(
        value: cubit,
        child: const MenuOfferSingleProductContent(),
      ),
      pizza: (cubit) => BlocProvider<PizzaCubit>.value(
        value: cubit,
        child: const MenuOfferPizzaContent(),
      ),
      combo: (cubit) => BlocProvider<ComboCubit>.value(
        value: cubit,
        child: const MenuOfferComboContent(),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            content,
            Positioned(
              left: 16,
              top: 8,
              child: backButton,
            ),
          ],
        ),
      ),
    );
  }

  void _onBackPressed(BuildContext context) {
    context.popRoute();
  }
}
