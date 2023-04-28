import 'package:flutter/material.dart';

class Horizontally3Parts extends StatefulWidget {
  @override
  State<Horizontally3Parts> createState() => _Horizontally3PartsState();
}

Expanded getContainer(Color clr, [flx = 1]) {
  return Expanded(
      flex: flx,
      child: Container(
        color: clr,
        margin: EdgeInsets.all(2),
      ));
}

class _Horizontally3PartsState extends State<Horizontally3Parts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              getContainer(Colors.orange),
              getContainer(Colors.white),
              getContainer(Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
