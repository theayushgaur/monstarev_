import 'package:flutter/material.dart';

class LinearLodaingIndicatorWidget extends StatelessWidget {
  const LinearLodaingIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: Colors.red,
      color: Colors.white,
    );
  }
}
