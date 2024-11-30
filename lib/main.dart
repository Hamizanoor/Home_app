import 'package:flutter/material.dart';
import 'package:homeapp/screens/details.dart';
import 'package:homeapp/screens/house_1.dart';
import 'package:homeapp/screens/login.dart';
import 'package:homeapp/screens/wish_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: House1(),
    );
  }
}
