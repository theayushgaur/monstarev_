import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/widgets_provider.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final switchProvider = Provider.of<WidgetsProvider>(context);
    return Center(
      child: Switch(
        inactiveThumbColor: Colors.grey.shade500,
        activeColor: Colors.red,
        inactiveTrackColor: Colors.white,
        value: switchProvider.isSwitched,
        onChanged: (bool value) {
          switchProvider.toggleSwitch(value);
        },
      ),
    );
  }
}
