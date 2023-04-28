import 'package:college_demo/pages/page_1.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  static const routeName = '/Page2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Page2'),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  //using material page route
                  Navigator.of(context).pop(Page1.routeName);
                  //using route name
                },
                child: Text('Previous Page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
