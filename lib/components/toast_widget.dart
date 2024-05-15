import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastWidget extends StatelessWidget {
  const ToastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showToast(context); // Pass context to showToast function
        },
        child: Text('Show Toast'),
      ),
    );
  }

  void showToast(BuildContext context) {
    // Accept context as parameter
    Fluttertoast.showToast(
      msg: 'Hello, Flutter!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
