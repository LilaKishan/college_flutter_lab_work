import 'package:flutter/material.dart';

class Design_4 extends StatefulWidget{
  @override
  State<Design_4> createState() => _Design_4State();
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

class _Design_4State extends State<Design_4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    getContainer(Colors.brown,6),
                    getContainer(Colors.yellow,2),
                    getContainer(Colors.blueAccent),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                //1 colmn
                child: Column(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                getContainer(Colors.black),
                                getContainer(Colors.blue),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                getContainer(Colors.red,6),
                                getContainer(Colors.black,4),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    getContainer(Colors.green,),
                    getContainer(Colors.black),
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