import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monstarev/provider/widgets_provider.dart';

import 'package:provider/provider.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final checkboxProvider = Provider.of<WidgetsProvider>(context);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.red.withOpacity(.32);
              }
              return Colors.red;
            }),
            activeColor: Colors.red,
            value: checkboxProvider.isChecked,
            onChanged: (bool? value) {
              checkboxProvider.toggleCheckbox(value!);
            },
          ),
          Text(
            'Text Label',
            style: GoogleFonts.spaceGrotesk(
              decoration: TextDecoration.none,
              color: Theme.of(context).colorScheme.tertiary,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
