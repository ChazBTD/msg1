import 'package:flutter/material.dart';
import 'package:msg1/Welcome.dart';

class Splash extends StatelessWidget {

  @override
  Widget build (BuildContext context) {

    Future.delayed(
        const Duration(seconds: 3),
            (){ nextPage (context); }
    );

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(125),
          child: Column(
            children: [
              Image.asset('assets/Food Logo.png'),
            ],
          ),
        )
      ),
    );
  }

  void nextPage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (builder) => Welcome()),
            (route) => false
    );
  }
}

