import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  const ListButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!,
      ),
      trailing: const Icon(Icons.chevron_right_rounded),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onPressed', onPressed));
    properties.add(StringProperty('title', title));
  }
}
