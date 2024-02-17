import 'package:flutter/material.dart';
import 'package:msg1/Barcode.dart';
import 'package:msg1/Button.dart';

class Splash extends StatelessWidget {

  @override
  Widget build (BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column (
            children: [
              //logo
              SizedBox(height: 100),
              Image.asset('assets/Food Logo.png'),

              //buttons
              SizedBox(height: 50),
              Button(
                  onTap: () => SwitchPage(context),
                  buttonName: 'To Barcode Scanner'
              ),
            ],
          ),
        ),
      ),
    );
  }

  void SwitchPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Barcode()),
    );
  }
}

