import 'package:auto_route/auto_route.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/material.dart';

import '../models/country.dart';
import '../repositories/region_repository.dart';
import 'widgets/countries_list.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({
    super.key,
    this.canPop = true,
    this.repository = const RegionRepository(),
  });

  final bool canPop;
  final RegionRepository repository;

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  late final Future<List<Country>> _countriesLoad;

  @override
  void initState() {
    super.initState();
    _countriesLoad = widget.repository.loadCountries();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => widget.canPop ? true : false,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          automaticallyImplyLeading: widget.canPop,
          title: Text(S.of(context).region_country),
          titleSpacing: widget.canPop ? 0 : null,
        ),
        body: FutureBuilder<List<Country>>(
          future: _countriesLoad,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CountriesList(
                onCountryPressed: _onCountryPressed,
                countries: snapshot.requireData,
              );
            }

            return const Center(
              child: SizedBox.square(
                dimension: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onCountryPressed(Country country) {
    context.router.popForced<Country>(country);
  }
}
