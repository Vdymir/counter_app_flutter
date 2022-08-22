// ignore_for_file: use_key_in_widget_constructors

import "package:flutter/material.dart";
import 'package:flutter_application_1/src/screens/home_counter.dart';
// import 'package:flutter_application_1/src/screens/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: CounterPage()),
    );
  }
}
