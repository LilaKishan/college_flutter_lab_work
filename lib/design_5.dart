import 'package:flutter/material.dart';

class Design_5 extends StatefulWidget {
  @override
  State<Design_5> createState() => _Design_5State();
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

class _Design_5State extends State<Design_5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            //1 row
            getContainer(Colors.amber),
            //2 row
            Expanded(
              child: Row(
                children: [
                  getContainer(Colors.greenAccent),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              getContainer(Colors.blue),
                              getContainer(Colors.grey),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              getContainer(Colors.amber),
                              getContainer(Colors.red),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  getContainer(Colors.black),
                ],
              ),
            ),
            //3 row
            Expanded(
              child: Row(
                children: [
                  getContainer(Colors.redAccent),
                  getContainer(Colors.amber),
                  getContainer(Colors.black),
                  getContainer(Colors.yellow),
                ],
              ),
            ),
            //4 row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        getContainer(Colors.pinkAccent),
                        getContainer(Colors.grey),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    getContainer(Colors.black),
                                    getContainer(Colors.amber),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    getContainer(Colors.lightBlue),
                                    getContainer(Colors.black38),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        getContainer(Colors.pinkAccent),
                      ],
                    ),
                  ),
                  getContainer(Colors.blue),
                  getContainer(Colors.lightGreen),
                  Expanded(
                    child: Column(
                      children: [
                        getContainer(Colors.lightGreenAccent),
                        getContainer(Colors.red),
                        getContainer(Colors.black87, 3),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        getContainer(Colors.brown),
                        getContainer(Colors.amber),
                        getContainer(Colors.blue, 3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
