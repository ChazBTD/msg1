import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{

  @override
  Widget build (BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
    );

    return Scaffold(
      body: Center(
          child: Text(
              "Welcome",
              style: Theme.of(context).textTheme.headlineMedium
          )
      ),
    );
  }
}

