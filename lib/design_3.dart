import 'package:flutter/material.dart';

class Design_3 extends StatefulWidget{
  @override
  State<Design_3> createState() => _Design_3State();
}

Expanded getContainer(Color clr, [flx = 1]) {
  return Expanded(
    flex: flx,
    child: Container(
      margin: EdgeInsets.all(5),
      color: clr,
    ),
  );
}

class _Design_3State extends State<Design_3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              //first row
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    getContainer(Colors.amber,2),
                    getContainer(Colors.blue,5),
                  ],
                ),
              ),
              //2 row
              getContainer(Colors.green,8),
              //3 row
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    getContainer(Colors.white),
                    getContainer(Colors.amber,2),
                    getContainer(Colors.blueAccent),
                    Expanded(
                      child: Row(
                        children: [
                          getContainer(Colors.red),
                          getContainer(Colors.amber),
                          getContainer(Colors.deepOrangeAccent),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}