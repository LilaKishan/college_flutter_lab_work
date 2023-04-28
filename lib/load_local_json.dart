import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalJsonParsing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<String>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var jsonData = json.decode(snapshot.data.toString());
            return Center(
              child: Text(jsonData[8]['name'].toString()),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: rootBundle.loadString('assets/json/localjson.json'),
      ),
    );
  }
}
