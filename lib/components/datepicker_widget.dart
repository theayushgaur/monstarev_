import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import '../provider/widgets_provider.dart';

class DateTimeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: () => _selectDate(context),
            child: Text(
              'Select Date',
              style: GoogleFonts.spaceGrotesk(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: 20),
          Consumer<WidgetsProvider>(
            builder: (context, dateState, child) {
              return Text(
                dateState.selectedDate == null
                    ? 'No date selected'
                    : 'Selected Date: ${dateState.selectedDate.toString()}',
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // Function to show the date picker
  Future<void> _selectDate(BuildContext context) async {
    final dateState = Provider.of<WidgetsProvider>(context, listen: false);
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != dateState.selectedDate) {
      dateState.setSelectedDate(picked);
    }
  }
}
