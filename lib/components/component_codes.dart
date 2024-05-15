class ComponentCodes {
  static const Button = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button2 extends StatelessWidget {
  final String buttonName;
  const Button2({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Center(
        child: GestureDetector(
          child: Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                buttonName,
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
''';

  static const DockContainer = '''import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DockContainer extends StatefulWidget {
  const DockContainer({super.key});

  @override
  State<DockContainer> createState() => _DockContainerState();
}

class _DockContainerState extends State<DockContainer> {
  List<bool> _Hovered = List.filled(6, false);
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 250,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.grey.shade800,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(32, 32, 32, 1),
                    border: Border.all(
                      color: Colors.grey.shade800,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildBouncingIcon(
                          'assets/images/Facebook Circled.svg', 0),
                      _buildBouncingIcon('assets/images/GitHub(2).svg', 1),
                      _buildBouncingIcon('assets/images/Google.svg', 2),
                      _buildBouncingIcon('assets/images/Apple Logo(2).svg', 3),
                      _buildBouncingIcon('assets/images/Apple Logo(2).svg', 4),
                      _buildBouncingIcon('assets/images/GitHub(2).svg', 5),
                    ],
                  ),
                ),
              ),
            ),
          );
          
  }

   Widget _buildBouncingIcon(String iconData, int index) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _Hovered[index] = true;
        });
      },
      onExit: (_) {
        setState(() {
          _Hovered[index] = false;
        });
      },
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 2.0, end: _Hovered[index] ? 1.5 : 1.0),
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: child,
          );
        },
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: _Hovered[index] ? -5.0 : 0.0),
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          builder: (context, offset, child) {
            return Transform.translate(
              offset: Offset(0, offset),
              child: child,
            );
          },
          child: Container(
            width: 50, // Adjust size as needed
            height: 50, // Adjust size as needed
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(32, 32, 32, 1),
            ),
            child: SvgPicture.asset(iconData),
          ),
        ),
      ),
    );
  }
}
''';
  static const Switch = '''import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        inactiveThumbColor: Colors.grey.shade500,
        activeColor: Colors.red,
        inactiveTrackColor: Colors.white,
        value: isSwitched,
        onChanged: (bool value) {
          setState(() {
            isSwitched = value;
          });
        },
      ),
    );
  }
}
''';
  static const Slider = '''import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Slider(
        activeColor: Colors.red,
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}
''';
  static const ErrorMessage = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.error,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Error Message',
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
''';
  static const CheckBox = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
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
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text(
            'Text Label',
            style: GoogleFonts.spaceGrotesk(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
''';
  static const TextField = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextField2 extends StatelessWidget {
  final String hintText;
  const TextField2({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            fontSize: 15,
            color: Colors.red,
          ),
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.subdirectory_arrow_left,
              color: Colors.red,
            ),
            hintText: hintText,
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
    );
  }
}
''';
  static const TabBar = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            // border: Border.all(color: Pallate.borderGreyColor),
            ),
        child: TabBar(
          indicatorWeight: 1.0,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: [
            Tab(
                child: Text(
              'Option 1',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )),
            Tab(
                child: Text(
              'Option 2',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
''';
  static const SearchBar = '''import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  // final TextEditingController textController;
  final String hintText;
  const SearchBarWidget({required this.hintText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.red,
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
      ),
    );
  }
}
''';
  static const RadioButton = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              activeColor: Colors.red,
              value: 'Option 1',
              groupValue: selectedOption,
              onChanged: (String? value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            Text(
              'Option 1',
              style: GoogleFonts.spaceGrotesk(
                decoration: TextDecoration.none,
                color: Colors.white,
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
              groupValue: selectedOption,
              onChanged: (String? value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            Text(
              'Option 2',
              style: GoogleFonts.spaceGrotesk(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
''';
  static const DateTime = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTimeWidget extends StatefulWidget {
  @override
  _DateTimeWidgetState createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  DateTime? _selectedDate;

  // Function to show the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red),
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
          Text(
            _selectedDate == null
                ? 'No date selected'
                : 'Selected Date: {_selectedDate.toString()}',
            style: GoogleFonts.spaceGrotesk(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
''';
  static const CustomCard = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0), // Top left corner radius
              topRight: Radius.circular(10.0),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.blue,
                Colors.grey,
                Colors.red,
              ],
            ),
            boxShadow: [
              // Add boxShadow
              BoxShadow(
                color: Colors.red.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 3), // Adjust offset for shadow direction
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.rss_feed,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1234 5678 3452 4090',
                  style: GoogleFonts.openSans(
                    wordSpacing: 13,
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0), // Top left corner radius
              bottomRight: Radius.circular(10.0),
            ),
            color: Colors.white,
            border: Border(
              left: BorderSide(color: Colors.grey),
              right: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey),
            ),
            boxShadow: [
              // Add boxShadow
              BoxShadow(
                color: const Color.fromRGBO(156, 39, 176, 1).withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 3), // Adjust offset for shadow direction
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Coder Boy',
                      style: GoogleFonts.spaceGrotesk(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Exp:  ',
                        style: GoogleFonts.spaceGrotesk(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: '09 / 24 ',
                            style: GoogleFonts.spaceGrotesk(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Image.asset(
                //   'assets/card_icon.png',
                //   height: 60,
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
''';
  static const DropDown = '''import 'package:flutter/material.dart';
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
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                          color:
                              provider.showContainer ? Colors.grey : Colors.red,
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
                  width: MediaQuery.of(context).size.width * 0.23,
                  height: 100,
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
                          provider.selectedCountry == provider.countries[index];
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
          );
        },
      ),
    );
  }
}
''';
  static const SuccessMessage = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessMessageWidget extends StatelessWidget {
  const SuccessMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Success Message',
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
''';
  static const AnimatedButton = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToggleButtonWidget extends StatefulWidget {
  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  bool _buttonClicked = false;

  void _changeButtonState() {
    setState(() {
      _buttonClicked = !_buttonClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red),
            ),
            onPressed: _changeButtonState,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _buttonClicked ? 'Pause' : 'Play',
                  style: GoogleFonts.spaceGrotesk(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  _buttonClicked ? Icons.pause : Icons.play_arrow_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
''';
  static const PasswordField = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordTextFieldWidget extends StatefulWidget {
  const PasswordTextFieldWidget({
    super.key,
  });

  @override
  _TextField2State createState() => _TextField2State();
}

class _TextField2State extends State {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          obscureText: obscureText,
          style: TextStyle(
            fontSize: 15,
            color: Colors.red,
          ),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(
                obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
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
    );
  }
}
''';
  static const MessageSentAlert = '''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationSentWidget extends StatelessWidget {
  const NotificationSentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Message Sent!',
                  style: GoogleFonts.spaceGrotesk(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.close,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
''';
  static const GlowingButton = '''import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:google_fonts/google_fonts.dart';

class GlowingButton extends StatelessWidget {
  const GlowingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedGradientBorder(
      animationTime: 10,
      borderSize: 1,
      glowSize: 4,
      gradientColors: [
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.white,
      ],
      borderRadius: BorderRadius.circular(10),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.grey.shade800,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 60,
          width: 300,
          child: Center(
            child: Text(
              'Glowing Button',
              style: GoogleFonts.spaceGrotesk(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
''';
  static const SocialButtons = '''import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButtons extends StatefulWidget {
  const SocialButtons({super.key});

  @override
  State<SocialButtons> createState() => _SocialButtonsState();
}

class _SocialButtonsState extends State<SocialButtons> {
  final String buttonName;
  final String codeSnippet;

  _SocialButtonsState({required this.buttonName, required this.codeSnippet});
  @override
  Widget build(BuildContext context) {
    return AnimatedGradientBorder(
      animationTime: 10,
      borderSize: 1,
      glowSize: 4,
      gradientColors: [
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Color.fromRGBO(224, 50, 38, 1),
      ],
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 500,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Colors.grey.shade800,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(
                buttonName: 'Continue with Facebook',
                buttonColor: const Color.fromRGBO(53, 121, 234, 1.0),
                textColor: Colors.white,
                image: 'assets/images/Facebook Circled.svg',
                borderColor: const Color.fromRGBO(53, 121, 234, 1.0),
              ),
              button(
                  buttonName: 'Continue with GitHub',
                  buttonColor: Colors.white,
                  textColor: Colors.black,
                  image: 'assets/images/GitHub(2).svg',
                  borderColor: Colors.grey.shade800),
              button(
                buttonName: 'Continue with Google',
                buttonColor: Colors.white,
                textColor: Colors.grey.shade600,
                borderColor: Colors.white,
                image: 'assets/images/Google.svg',
              ),
              button(
                buttonName: 'Continue with Apple',
                buttonColor: Colors.black,
                textColor: Colors.white,
                borderColor: Colors.grey.shade800,
                image: 'assets/images/Apple Logo(2).svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class button extends StatelessWidget {
  const button({
    super.key,
    required this.buttonName,
    required this.buttonColor,
    required this.textColor,
    required this.image,
    required this.borderColor,
  });
  final Color buttonColor;
  final String image;
  final Color textColor;
  final String buttonName;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 58,
          width: 370,
          // padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor),
            color: buttonColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(image),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.005,
                ),
                Text(
                  buttonName,
                  style: GoogleFonts.poppins(
                    decoration: TextDecoration.none,
                    color: textColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
''';
  static const TweetCard = '''import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/code_dialog_box.dart';

class TweetCardWidget extends StatefulWidget {
  final String containerName;

  final String codeSnippet;
  const TweetCardWidget(
      {Key? key, required this.containerName, required this.codeSnippet})
      : super(key: key);

  @override
  State<TweetCardWidget> createState() => _TweetCardWidgetState();
}

class _TweetCardWidgetState extends State<TweetCardWidget> {
  @override
  Widget build(BuildContext context) {
    return _buildTweetCard();
  }

  Widget _buildTweetCard() {
    return AnimatedGradientBorder(
      animationTime: 10,
      borderSize: 1,
      glowSize: 4,
      gradientColors: [
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.purple,
      ],
      borderRadius: BorderRadius.circular(10),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Colors.grey.shade800,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 500,
        width: 500,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/IMG_20211028_020444_729.JPG',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Ayush',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '@theayushgaur',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/images/TwitterX.svg',
                    height: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Companies spend \$30,000+ and several weeks to build beautiful landing pages like @linear, @wopehq and @reflectnotes ✨I built @reactjs + @tailwindcss components for you to do the same in hours, starting at just \$29 Pre-order link + demo below 👇 #buildinpublic @buildspace',
                style: GoogleFonts.poppins(
                  decoration: TextDecoration.none,
                  color: Colors.grey
                      .shade300, // This color will be overridden by the gradient

                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/Shop App-modified (1).png',
                filterQuality: FilterQuality.high,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
''';
  static const notificationContainer =
      '''import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';

import '../../widgets/code_dialog_box.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedGradientBorder(
      animationTime: 10,
      borderSize: 1,
      glowSize: 4,
      gradientColors: [
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.yellow,
      ],
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 500,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Colors.grey.shade800,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              notificationContainer(badgeColor: Colors.purple),
              notificationContainer(badgeColor: Colors.red),
              notificationContainer(badgeColor: Colors.blue),
              notificationContainer(badgeColor: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}

class notificationContainer extends StatelessWidget {
  const notificationContainer({
    super.key,
    required this.badgeColor,
  });

  final Color badgeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey.shade900,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.grey.shade900,
          ],
        ),
        border: Border.all(
          color: Colors.grey.shade800,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: badgeColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Ayush',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '@theayushgaur',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // SvgPicture.asset(
            //   'assets/images/TwitterX.svg',
            //   height: 40,
            // ),
          ],
        ),
      ),
    );
  }
}
''';
}
