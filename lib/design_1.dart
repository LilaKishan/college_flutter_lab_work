import 'package:flutter/material.dart';

class Design_1 extends StatefulWidget {
  const Design_1({super.key});

  @override
  State<Design_1> createState() => _Design_1State();
}

class _Design_1State extends State<Design_1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          //1 row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ],
            ),
          ),
          //2 row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 161, 52, 44),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
          ),
          //3 row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 92, 26, 2),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
