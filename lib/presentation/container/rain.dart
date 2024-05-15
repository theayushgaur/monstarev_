import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class RainAnimation extends StatelessWidget {
  const RainAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        width: 500,
        color: Colors.red,
        child: Stack(
          children: [
            for (int index = 0; index < 300; index++)
              _RainDrop(
                screenHeight: 500,
                screenWidth: 500,
              ),
          ],
        ),
      ),
    );
  }
}

class _RainDrop extends StatefulWidget {
  final double screenHeight, screenWidth;

  const _RainDrop({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  @override
  State<_RainDrop> createState() => _RainDropState();
}

class _RainDropState extends State<_RainDrop>
    with SingleTickerProviderStateMixin {
  late double dx, dy, length, z, vy;

  Random random = Random();

  double get screenHeight => widget.screenHeight;

  double get screenWidth => widget.screenWidth;

  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();
    randomizeValues();
    _ticker = createTicker((elapsed) {
      dy += vy;
      if (dy >= screenHeight + 100) {
        randomizeValues();
      }
      setState(() {});
    });
    _ticker.start();
  }

  randomizeValues() {
    dx = random.nextDouble() * screenWidth;
    dy = -500 - (random.nextDouble() * -500);
    z = random.nextDouble() * 20;
    length = _rangeMap(z, 0, 20, 10, 20);
    vy = _rangeMap(z, 0, 20, 15, 5);
  }

  double _rangeMap(
      double value, double min, double max, double newMin, double newMax) {
    return ((value - min) * (newMax - newMin) / (max - min)) + newMin;
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(dx, dy),
      child: Container(
        height: length,
        width: 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.red,
          border: Border.all(width: _rangeMap(z, 0, 20, 1, 3)),
        ),
      ),
    );
  }
}
