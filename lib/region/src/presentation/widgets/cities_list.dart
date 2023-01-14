import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/city.dart';

class CitiesList extends StatelessWidget {
  CitiesList({
    super.key,
    required this.onCityPressed,
    required this.topCities,
    required this.otherCities,
    required this.selectedCity,
  }) : _itemCount = _computeItemCount(topCities, otherCities);

  final void Function(City) onCityPressed;
  final List<City> topCities;
  final List<City> otherCities;
  final City? selectedCity;
  final int _itemCount;

  static int _computeItemCount(List<City> topCities, List<City> otherCities) {
    final includeSpacing = topCities.isNotEmpty && otherCities.isNotEmpty;
    return topCities.length + otherCities.length + (includeSpacing ? 1 : 0);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _itemCount,
      separatorBuilder: (_, i) {
        return _showDivider(i)
            ? ColoredBox(
                color: Theme.of(context).listTileTheme.tileColor!,
                child: const Divider(indent: 16),
              )
            : const SizedBox.shrink();
      },
      itemBuilder: (context, i) {
        final city = _getCity(i);

        if (city == null) {
          return const SizedBox(height: 16);
        }

        return ListTile(
          onTap: () => onCityPressed(city),
          title: Text(
            city.name,
            style: Theme.of(context).textTheme.bodyLarge!,
          ),
          trailing: city == selectedCity ? const Icon(Icons.check_rounded) : null,
        );
      },
    );
  }

  bool _showDivider(int i) {
    if (topCities.isEmpty || otherCities.isEmpty) {
      return true;
    }

    return i < topCities.length - 1 || topCities.length < i;
  }

  City? _getCity(int i) {
    if (topCities.isEmpty) {
      return otherCities[i];
    } else if (i < topCities.length) {
      return topCities[i];
    } else if (i > topCities.length) {
      return otherCities[i - topCities.length - 1];
    }

    return null;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onCityPressed', onCityPressed));
    properties.add(DiagnosticsProperty<City>('selectedCity', selectedCity));
    properties.add(IterableProperty<City>('_topCities', topCities));
    properties.add(IterableProperty<City>('_otherCities', otherCities));
  }
}
