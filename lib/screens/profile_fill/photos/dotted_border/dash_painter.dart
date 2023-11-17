part of 'dotted_border.dart';

typedef PathBuilder = Path Function(Size);

class _DashPainter extends CustomPainter {
  final double strokeWidth;
  final List<double> dashPattern;
  final Color color;
  final Radius radius;

  _DashPainter({
    this.strokeWidth = 1,
    this.dashPattern = const <double>[3, 1],
    this.color = Colors.black,
    this.radius = const Radius.circular(0),
  });

  @override
  void paint(Canvas canvas, Size originalSize) {
    Paint paint = Paint()
      ..strokeWidth = strokeWidth
      ..color = color
      ..style = PaintingStyle.stroke;

    Path path;
    path = _getPath(originalSize);

    canvas.drawPath(path, paint);
  }

  Path _getPath(Size size) {
    Path path = _getRRectPath(size, radius);
    return dashPath(path, dashArray: CircularIntervalList(dashPattern));
  }

  Path _getRRectPath(Size size, Radius radius) {
    return Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(
            0,
            0,
            size.width,
            size.height,
          ),
          radius,
        ),
      );
  }

  @override
  bool shouldRepaint(_DashPainter oldDelegate) {
    return oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.color != color ||
        oldDelegate.dashPattern != dashPattern;
  }
}
