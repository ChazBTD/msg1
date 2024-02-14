import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


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
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
          ], //
        ),
      ),
    );
  }
}

