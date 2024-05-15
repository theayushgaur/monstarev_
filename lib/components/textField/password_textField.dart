import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monstarev/provider/widgets_provider.dart';

import 'package:provider/provider.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  const PasswordTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WidgetsProvider(),
      child: Consumer<WidgetsProvider>(
        builder: (context, passwordState, child) {
          return Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: passwordState.obscureText,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordState.obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        passwordState.toggleVisibility();
                      },
                    ),
                    hintText: 'Placeholder',
                    hintStyle: GoogleFonts.spaceGrotesk(
                      decoration: TextDecoration.none,
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
