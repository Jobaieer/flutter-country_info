// import 'package:country_info/view/screens/home.dart';
import 'package:country_info/view/screens/login.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Country Info',
      home: const Login(),
    );
  }
}
