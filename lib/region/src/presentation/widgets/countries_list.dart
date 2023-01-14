import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/country.dart';
import 'country_tile.dart';

class CountriesList extends StatelessWidget {
  const CountriesList({
    super.key,
    required this.onCountryPressed,
    required this.countries,
  });

  final void Function(Country) onCountryPressed;
  final List<Country> countries;

  @override
  Widget build(BuildContext context) {
    final translations = _getTranslationsMap(context, countries);

    countries.sort(
      (a, b) => translations[a]!.compareTo(translations[b]!),
    );

    return ListView.separated(
      itemCount: countries.length,
      separatorBuilder: (_, __) => ColoredBox(
        color: Theme.of(context).listTileTheme.tileColor!,
        child: const Divider(indent: 16),
      ),
      itemBuilder: (context, i) {
        final country = countries[i];

        return CountryTile(
          onPressed: () => onCountryPressed(country),
          isoName: country.isoName,
          name: translations[country]!,
        );
      },
    );
  }

  Map<Country, String> _getTranslationsMap(BuildContext context, List<Country> countries) {
    return <Country, String>{
      for (final country in countries) //
        country: S.of(context).region_country_name(country.isoName),
    };
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onCountryPressed', onCountryPressed));
    properties.add(IterableProperty<Country>('countries', countries));
  }
}
