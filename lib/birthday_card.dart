import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BirthdayCard extends StatefulWidget {
  @override
  State<BirthdayCard> createState() => _BirthdayCardState();
}

class _BirthdayCardState extends State<BirthdayCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "assets/card1.jpg",
                        fit: BoxFit.cover,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              "Happiest bithday ",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 30),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 70, 40, 0),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(98), // Image radius
                                child: Image.network(
                                    'https://avatars.githubusercontent.com/u/93334931?v=4',
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              "@yashkhokhar ",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 30),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
