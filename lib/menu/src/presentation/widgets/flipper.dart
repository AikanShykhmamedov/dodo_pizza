import 'dart:math';

import 'package:dodo_pizza/app/app_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef IsForegroundKey = ValueKey<bool>;

class Flipper extends StatelessWidget {
  Flipper({
    super.key,
    required this.foreground,
    required this.background,
    required this.isFlipped,
  });

  final Widget foreground;
  final Widget background;
  final bool isFlipped;

  final _rotationTween = Tween(
    begin: pi,
    end: 0.0,
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: AppAnimationDurations.standard,
      transitionBuilder: (child, animation) {
        final isForeground = (child.key! as IsForegroundKey).value;
        final isConcealing = isForeground == isFlipped;

        return AnimatedBuilder(
          animation: animation,
          builder: (context, _) {
            final rotation = _getRotation(animation.value, isConcealing);
            final tilt = _getTilt(animation.value, isConcealing);
            final transform = Matrix4.rotationY(rotation)..setEntry(3, 0, tilt);

            return Transform(
              transform: transform,
              alignment: Alignment.center,
              child: child,
            );
          },
        );
      },
      layoutBuilder: (currentChild, previousChildren) => Stack(
        children: [
          if (currentChild != null) currentChild,
          ...previousChildren,
        ],
      ),
      child: isFlipped
          ? Builder(
              key: const IsForegroundKey(false),
              builder: (_) => background,
            )
          : Builder(
              key: const IsForegroundKey(true),
              builder: (_) => foreground,
            ),
    );
  }

  double _getRotation(double value, bool truncate) {
    final rotation = _rotationTween.transform(value);
    return truncate ? min(rotation, pi / 2) : rotation;
  }

  double _getTilt(double value, bool changeSign) {
    final tilt = ((value - 0.5).abs() - 0.5) * 0.002;
    return changeSign ? -tilt : tilt;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('isFlipped', isFlipped));
  }
}
