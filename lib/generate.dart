import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  String qr_code_data = "hello all";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QrImage(data: qr_code_data),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: qr_code_text,
                decoration: InputDecoration(hintText: "Eenter data/link"),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: FlatButton(
                  onPressed: () async {
                    if (qr_code_text.text.isEmpty) {
                      setState(() {
                        qr_code_data = "flutter";
                      });
                    } else {
                      setState(() {
                        qr_code_data = qr_code_text.text;
                      });
                    }
                  },
                  child: Text("Generate QR Code"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.blue, width: 3.0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  final qr_code_text = TextEditingController();
}
