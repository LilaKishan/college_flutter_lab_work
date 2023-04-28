// import 'package:college_demo/bottomnavigationbar.dart';
// import 'package:college_demo/design_5.dart';
import 'package:college_demo/drawer_demo.dart';
import 'package:college_demo/load_local_json.dart';
import 'package:college_demo/login_page.dart';
import 'package:college_demo/pages/page_1.dart';
import 'package:college_demo/pages/page_2.dart';
import 'package:college_demo/tabview_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: LocalJsonParsing(),
        routes: {
          Page1.routeName: (context) => Page1(),
          Page2.routeName: (context) => Page2(),
        });
  }
}
