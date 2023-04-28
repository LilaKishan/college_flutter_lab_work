import 'package:flutter/material.dart';

class Vertically3Parts extends StatefulWidget {
  @override
  State<Vertically3Parts> createState() => _Vertically3PartsState();
}

class _Vertically3PartsState extends State<Vertically3Parts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.orange,
                margin: EdgeInsets.all(2),
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
                margin: EdgeInsets.all(2),
              )),
              Expanded(
                  child: Container(
                color: Colors.green,
                margin: EdgeInsets.all(2),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
