import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/city.dart';

class FilteredCitiesList extends StatelessWidget {
  const FilteredCitiesList({
    super.key,
    required this.onCityPressed,
    required String prefix,
    required this.filteredCities,
    required this.selectedCity,
  }) : _prefixLength = prefix.length;

  final void Function(City) onCityPressed;
  final City? selectedCity;
  final List<City> filteredCities;
  final int _prefixLength;

  @override
  Widget build(BuildContext context) {
    if (filteredCities.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            S.of(context).regionCitySearchEmpty,
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return ListView.separated(
      itemCount: filteredCities.length,
      separatorBuilder: (_, __) => ColoredBox(
        color: Theme.of(context).listTileTheme.tileColor!,
        child: const Divider(indent: 16),
      ),
      itemBuilder: (context, i) {
        final city = filteredCities[i];

        return ListTile(
          onTap: () => onCityPressed(city),
          title: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyLarge!,
              children: [
                TextSpan(
                  text: city.name.substring(0, _prefixLength),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: city.name.substring(_prefixLength),
                ),
              ],
            ),
          ),
          trailing: city == selectedCity ? const Icon(Icons.check_rounded) : null,
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onCityPressed', onCityPressed));
    properties.add(DiagnosticsProperty<City>('selectedCity', selectedCity));
    properties.add(IterableProperty<City>('filteredCities', filteredCities));
    properties.add(IntProperty('_prefixLength', _prefixLength));
  }
}
