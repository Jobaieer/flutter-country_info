import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String email;
  const Home({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Country Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
        titleSpacing: 0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Text(email)
          ],
        ),
      ),
    );
  }
}
