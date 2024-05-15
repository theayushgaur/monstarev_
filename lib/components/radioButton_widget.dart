import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import '../provider/widgets_provider.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WidgetsProvider>(
      builder:
          (BuildContext context, WidgetsProvider radioState, Widget? child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  activeColor: Colors.red,
                  value: 'Option 1',
                  groupValue: radioState.selectedOption,
                  onChanged: (String? value) {
                    radioState.setSelectedOption(value);
                  },
                ),
                Text(
                  'Option 1',
                  style: GoogleFonts.spaceGrotesk(
                    decoration: TextDecoration.none,
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  focusColor: Colors.white,
                  activeColor: Colors.red,
                  value: 'Option 2',
                  groupValue: radioState.selectedOption,
                  onChanged: (String? value) {
                    radioState.setSelectedOption(value);
                  },
                ),
                Text(
                  'Option 2',
                  style: GoogleFonts.spaceGrotesk(
                    decoration: TextDecoration.none,
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
