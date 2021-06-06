import 'package:flutter/material.dart';
import 'package:qr_code_scan_and_generator/generate.dart';
import 'package:qr_code_scan_and_generator/scan.dart';

class Homapage extends StatefulWidget {
  @override
  _HomapageState createState() => _HomapageState();
}

class _HomapageState extends State<Homapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR CODE DEMO"),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button("Scan", Scan()),
              SizedBox(
                height: 10,
              ),
              button("Generate", Generate())
            ],
          ),
        ),
      ),
    );
  }

  Widget button(String text, Widget widget) {
    return OutlinedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(text),
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10),
      //     side: BorderSide(color: Colors.blue, width: 3.0)),
    );
  }
}
