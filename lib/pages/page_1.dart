import 'package:college_demo/pages/page_2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  static const routeName = '/Page1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Page1'),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => Page2(),
                  //   ),
                  // );
                        //using material page route
                  Navigator.of(context).pushNamed(Page2.routeName);
                        //using named route
                },
                child: Text('Next Page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
