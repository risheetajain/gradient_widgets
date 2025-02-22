import 'package:flutter/material.dart';
import 'package:gradient_widgets/constants/routes.dart';
import 'package:gradient_widgets/widgets/custom_gradient_checkbox.dart';
import 'package:gradient_widgets/widgets/custom_gradient_switch.dart';

import 'home.dart';
import 'widgets/custom_gradient_radio_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFDEE9F9),
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      initialRoute: home,
      routes: {
        checkBox: (context) => const GradientCheckBox(),
        radioBox: (context) => const GradientRadioBox(),
        switchBox: (context) => const GradientSwitch(),
        
        home: (context) => const Home(),
      },
    );
  }
}
