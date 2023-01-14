import 'package:country_flags/country_flags.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CountryTile extends StatelessWidget {
  const CountryTile({
    super.key,
    required this.onPressed,
    required this.isoName,
    required this.name,
  });

  final VoidCallback onPressed;
  final String isoName;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: CountryFlagIcon(
        isoName: isoName,
        size: 20,
      ),
      horizontalTitleGap: 8,
      title: Text(
        name,
        style: Theme.of(context).textTheme.bodyLarge!,
      ),
      trailing: const Icon(Icons.chevron_right_rounded),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onPressed', onPressed));
    properties.add(StringProperty('isoName', isoName));
    properties.add(StringProperty('name', name));
  }
}
