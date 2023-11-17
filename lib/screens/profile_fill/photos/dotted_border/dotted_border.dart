import 'package:flutter/material.dart';
import 'package:senpai/screens/profile_fill/photos/dotted_border/widgets/dash_path.dart';

part 'dash_painter.dart';

/// Add a dotted border around any [child] widget. The [strokeWidth] property
/// defines the width of the dashed border and [color] determines the stroke
/// paint color. [CircularIntervalList] is populated with the [dashPattern] to
/// render the appropriate pattern. The [radius] property is taken into account
//A [customPath] can be passed in
/// as a parameter if you want to draw a custom shaped border.
class DottedBorder extends StatelessWidget {
  final Widget child;
  final double strokeWidth;
  final Color color;
  final List<double> dashPattern;
  final Radius radius;

  const DottedBorder({
    super.key,
    required this.child,
    this.color = Colors.black,
    this.strokeWidth = 1,
    this.dashPattern = const <double>[6],
    this.radius = const Radius.circular(0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.all(1),
      child: Stack(
        children: <Widget>[
          child,
          Positioned.fill(
            child: CustomPaint(
              painter: _DashPainter(
                strokeWidth: strokeWidth,
                radius: radius,
                color: color,
                dashPattern: dashPattern,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
