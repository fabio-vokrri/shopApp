import 'dart:math' show sqrt, max;
import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

@immutable
class CircularRevealClipper extends CustomClipper<Path> {
  final double fraction;
  final Alignment alignment;
  final Offset offset;
  final double minRadius;
  final double maxRadius;

  CircularRevealClipper({
    @required this.fraction,
    this.alignment,
    this.offset,
    this.minRadius,
    this.maxRadius,
  });

  @override
  Path getClip(Size size) {
    final Offset center = this.alignment?.alongSize(size) ??
        this.offset ??
        Offset(size.width / 2, size.height / 2);
    final minRadius = this.minRadius ?? 0;
    final maxRadius = this.maxRadius ?? calcMaxRadius(size, center);

    return Path()
      ..addOval(
        Rect.fromCircle(
          center: center,
          radius: lerpDouble(minRadius, maxRadius, fraction),
        ),
      );
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

  static double calcMaxRadius(Size size, Offset center) {
    final w = max(center.dx, size.width - center.dx);
    final h = max(center.dy, size.height - center.dy);
    return sqrt(w * w + h * h);
  }
}

class RevealRoute extends PageRouteBuilder {
  final Widget page;
  final AlignmentGeometry alignment;
  final Offset offset;
  final double minRadius;
  final double maxRadius;

  RevealRoute({
    @required this.page,
    this.minRadius = 0,
    @required this.maxRadius,
    this.alignment,
    this.offset,
  })  : assert(offset != null || alignment != null),
        super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return page;
          },
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ClipPath(
      clipper: CircularRevealClipper(
        fraction: animation.value,
        alignment: alignment,
        offset: offset,
        minRadius: minRadius,
        maxRadius: maxRadius,
      ),
      child: child,
    );
  }
}
