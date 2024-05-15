import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/textfield_provider.dart';

class DropDownWidget extends StatelessWidget {
  final String? icon;
  const DropDownWidget({
    Key? key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => Provider.of<TextFieldProvider>(context, listen: false)
          .setHovered(true),
      onExit: (_) => Provider.of<TextFieldProvider>(context, listen: false)
          .setHovered(false),
      child: Consumer<TextFieldProvider>(
        builder: (context, provider, _) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Color.fromRGBO(7, 10, 20, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'UNITED STATES OF AMERICA',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            provider.toggleContainer();
                          },
                          child: Icon(
                            Icons.arrow_downward,
                            color: provider.showContainer
                                ? Colors.grey
                                : Colors.red,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                if (provider.showContainer)
                  Container(
                    width: 300,
                    height: 150,
                    color: const Color.fromRGBO(232, 232, 232, 1),
                    child: ListView.builder(
                      itemCount: provider.countries.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            provider.countries[index],
                            style: TextStyle(
                              color: provider.selectedCountry ==
                                      provider.countries[index]
                                  ? Colors.red
                                  : Colors.black,
                            ),
                          ),
                          onTap: () {
                            provider.selectedCountry ==
                                provider.countries[index];
                          },
                          selected: provider.selectedCountry ==
                              provider.countries[index],
                          tileColor: provider.selectedCountry ==
                                  provider.countries[index]
                              ? Colors
                                  .red // Change background color to red when selected
                              : null,
                        );
                      },
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
