import 'package:country_info/models/country_model.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Country country;

  const Detail({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(country.name)), 
      body: Center(
        child: Text("Coming Soon!"),
      ),//country name
    );
  }
}
