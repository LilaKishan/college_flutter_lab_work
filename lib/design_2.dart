import 'package:flutter/material.dart';

class Design_2 extends StatefulWidget {
  @override
  State<Design_2> createState() => _Design_2State();
}

Expanded getContainer(Color clr, [flx = 1]) {
  return Expanded(
    flex: flx,
    child: Container(
      color: clr,
      margin: EdgeInsets.all(5.0),
    ),
  );
}

class _Design_2State extends State<Design_2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //first column
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/photos/daksh.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                    ),
                    // getContainer(Colors.lightBlue, 2),
                    getContainer(Colors.black, 5),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          getContainer(Colors.orange),
                          getContainer(Colors.blue),
                          getContainer(Colors.orange),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //second column
              Expanded(
                child: Row(
                  children: [
                    getContainer(Colors.red),
                    getContainer(Colors.amber),
                    getContainer(Colors.white),
                  ],
                ),
              ),
              //third column
              getContainer(Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
