import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/widgets_provider.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<WidgetsProvider>(
        builder: (BuildContext context, WidgetsProvider value, Widget? child) {
          return Slider(
            activeColor: Colors.red,
            value: value.currentSliderValue,
            max: 100,
            divisions: 5,
            label: value.currentSliderValue.round().toString(),
            onChanged: (_) {
              value.setSliderValue(_);
            },
          );
        },
      ),
    );
  }
}
