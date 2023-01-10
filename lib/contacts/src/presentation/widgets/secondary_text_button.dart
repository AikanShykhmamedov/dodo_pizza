import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SecondaryTextButton extends StatelessWidget {
  const SecondaryTextButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      child: Text(title),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onPressed', onPressed));
    properties.add(StringProperty('title', title));
  }
}
