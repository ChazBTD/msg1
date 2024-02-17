import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:msg1/Splash.dart';
import 'package:msg1/Button.dart';

class Barcode extends StatelessWidget{

  void testBarcodeAPI(barcode) async {
    print('testBarcodeAPI is running， Barcode: ${barcode}');
    String output = (await http.get(
        Uri.parse("https://api.barcodelookup.com/v3/products?barcode=${barcode}&formatted=y&key=jb1bu44zfimlxxge2hfhyysfg5b8kl"))
    ).body;
    print(output);
  }

  //getting what the user is typing
  final textController = TextEditingController();
  String barcodeNumber = '';

  //retrieve barcode number
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column (
            children: [
              //input
              SizedBox(height: 100),
              TextField(
                controller: textController,
                decoration: const InputDecoration(
                    hintText: 'Number Code Here',
                    border: OutlineInputBorder()
                ),
                onSubmitted: (String text) {
                  testBarcodeAPI(text);
                },
              ),

              SizedBox(height: 50),
              Button(
                  onTap: () => SwitchPage(context),
                  buttonName: 'To Home Screen'
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
      MaterialPageRoute(builder: (context) => Splash()),
    );
  }
}