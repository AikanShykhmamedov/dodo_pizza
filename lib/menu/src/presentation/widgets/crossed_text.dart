import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CrossedText extends StatelessWidget {
  const CrossedText(
    this.data, {
    super.key,
    required this.style,
  });

  final String data;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    var effectiveTextStyle = style;
    if (style.inherit) {
      effectiveTextStyle = DefaultTextStyle.of(context).style.merge(style);
    }

    final textPainter = TextPainter(
      text: TextSpan(
        text: data,
        style: effectiveTextStyle.copyWith(height: 1),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    return CustomPaint(
      painter: _CrossTextPainter(
        crossColor: Theme.of(context).colorScheme.primary.withAlpha(160),
        textPainter: textPainter,
      ),
      size: textPainter.size,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('data', data));
    style.debugFillProperties(properties);
  }
}

class _CrossTextPainter extends CustomPainter {
  const _CrossTextPainter({
    required this.crossColor,
    required this.textPainter,
  });

  final Color crossColor;
  final TextPainter textPainter;

  @override
  void paint(Canvas canvas, Size size) {
    textPainter.paint(canvas, Offset.zero);

    const strokeWidth = 3.0;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..color = crossColor;

    final path = Path()
      ..moveTo(0, size.height - strokeWidth)
      ..quadraticBezierTo(size.width / 3, size.height / 4, size.width, strokeWidth);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _CrossTextPainter oldDelegate) {
    return crossColor != oldDelegate.crossColor || textPainter != oldDelegate.textPainter;
  }
}
