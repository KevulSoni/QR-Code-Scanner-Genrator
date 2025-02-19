import 'package:flutter/material.dart';
import 'package:qr_code/genrate_qr_code.dart';
import 'package:qr_code/scan_qr_code.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QR Code Scanner And genrator",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Scanner And Genrator"),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQRCode()));
              });
            },
                child: Text("Scan QR Code")),
            SizedBox(height: 40.0),
            ElevatedButton(onPressed: (){
              setState(() {
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenrateQRCode()));
              });
            },
                child: Text("Genrate QR Code")),
          ],
        ),
      ),
    );
  }
}
