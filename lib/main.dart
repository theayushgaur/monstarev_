import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:monstarev/firebase_options.dart';
import 'package:monstarev/presentation/home_page.dart';
import 'package:monstarev/provider/scroll_provider.dart';
import 'package:monstarev/provider/textfield_provider.dart';
import 'package:monstarev/provider/theme_changer.dart';
import 'package:monstarev/provider/widgets_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<TextFieldProvider>(
          create: (_) => TextFieldProvider()),
      ChangeNotifierProvider<WidgetsProvider>(create: (_) => WidgetsProvider()),
      ChangeNotifierProvider<ThemeChanger>(create: (_) => ThemeChanger()),
      ChangeNotifierProvider<ScrollControllerProvider>(
          create: (_) => ScrollControllerProvider()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MonstaRev_',
      theme: themeChanger.thememode,
      home: const HomePage(),
    );
  }
}
