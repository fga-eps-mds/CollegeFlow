import 'dart:math';

import 'package:flutter/material.dart';

class FlowLoading extends StatefulWidget {
  final Color color;
  final Color finalColor;
  final double maxHeight;
  final double maxWidth;

  const FlowLoading({
    this.color = Colors.blue,
    this.finalColor = Colors.white,
    this.maxHeight = 32,
    this.maxWidth = 32,
    Key? key,
  }) : super(key: key);

  factory FlowLoading.dark() => const FlowLoading(
        color: Colors.white,
        finalColor: Colors.black,
      );

  @override
  _FlowLoadingState createState() => _FlowLoadingState();
}

class _FlowLoadingState extends State<FlowLoading>
    with SingleTickerProviderStateMixin {
  late final Animation<double> animation;
  late final AnimationController controller;

  final _rotationTween = Tween(begin: -pi, end: pi);

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1250),
    );

    animation = _rotationTween.animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.repeat();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: widget.maxHeight,
        maxWidth: widget.maxWidth,
      ),
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Transform.rotate(
            angle: animation.value,
            child: CustomPaint(
              painter: _CircularProgressIndicatorPainter(
                color: widget.color,
                finalColor: widget.finalColor,
              ),
              child: Container(),
            ),
          );
        },
      ),
    );
  }
}

class _CircularProgressIndicatorPainter extends CustomPainter {
  final Color color;
  final Color finalColor;

  _CircularProgressIndicatorPainter({
    required this.color,
    required this.finalColor,
  });

  final strokeWidth = 5.0;

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWidth = 3.0;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    final foregroundPaint = Paint()
      ..strokeWidth = strokeWidth
      ..color = finalColor
      ..shader = SweepGradient(
        transform: const GradientRotation(-pi / 4),
        colors: [
          finalColor.withOpacity(0),
          color,
          color,
          color,
        ],
      ).createShader(Offset.zero & size)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      0,
      pi / 2,
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(_CircularProgressIndicatorPainter oldPainter) {
    return true;
  }
}
