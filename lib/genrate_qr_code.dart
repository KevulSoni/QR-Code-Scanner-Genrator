import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class GenrateQRCode extends StatefulWidget {
  const GenrateQRCode({super.key});

  @override
  State<GenrateQRCode> createState() => _GenrateQRCodeState();
}

class _GenrateQRCodeState extends State<GenrateQRCode> {
  final TextEditingController urlController = TextEditingController();
  // late final TextEditingController controller;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Genrate QR Code"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              if(urlController.text.isNotEmpty)
              QrImageView(
                data: urlController.text,
                version: QrVersions.auto,
                size: 200.0,
              ),
             Container(
               padding: EdgeInsets.only(left: 10, right: 10),
               child: TextField(
               controller: urlController,
                 decoration: InputDecoration(
                   hintText: "Enter your data",
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                   labelText: "enter Your data"
                 ),
               ),
             ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: (){
                setState(() {

                });
              },
                  child: Text("Genrate QR Code"))
            ],
          ),
        ),

      ),
    );
  }
}
