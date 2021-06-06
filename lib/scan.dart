import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String qrResult = "Not yet scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Result",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              qrResult,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () async {
                  String scanText = await BarcodeScanner.scan();
                  setState(() {
                    qrResult = scanText;
                  });
                },
                child: Text("Scan QR Code"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.blue, width: 3.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
