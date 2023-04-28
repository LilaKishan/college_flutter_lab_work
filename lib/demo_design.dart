// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Demo_Design extends StatefulWidget {
  @override
  State<Demo_Design> createState() => _Demo_DesignState();
}

Expanded getContainer(Color clr, [flx = 1]) {
  return Expanded(
    flex: flx,
    child: Container(
      margin: EdgeInsets.all(5.0),
      color: clr,
    ),
  );
}

class _Demo_DesignState extends State<Demo_Design> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            getContainer(Colors.blueAccent),
            getContainer(Colors.grey),
          ],
        )),
      ),
    );
  }
}
