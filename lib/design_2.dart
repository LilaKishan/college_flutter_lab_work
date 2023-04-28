import 'package:flutter/material.dart';

class Design_2 extends StatefulWidget {
  @override
  State<Design_2> createState() => _Design_2State();
}

Expanded getContainer(Color clr, [flx = 1]) {
  return Expanded(
    flex: flx,
    child: Container(
      margin: EdgeInsets.all(2),
      color: clr,
    ),
  );
}

class _Design_2State extends State<Design_2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            //1 row
            child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  getContainer(Color.fromARGB(255, 140, 134, 134), 2),
                  getContainer(Colors.orangeAccent, 2),
                  getContainer(Colors.blue, 3),
                ],
              ),
            ),
            //2 row
            Expanded(
              child: Column(
                children: [
                  getContainer(Color.fromARGB(255, 113, 30, 4), 2),
                  getContainer(Colors.green, 2),
                  getContainer(Color.fromARGB(255, 139, 171, 204)),
                ],
              ),
            ),
            //3 row
            Expanded(
              child: Column(
                children: [
                  getContainer(Color.fromARGB(255, 186, 55, 7)),
                  getContainer(Colors.amber, 3),
                  getContainer(Color.fromARGB(255, 159, 10, 120), 2),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
