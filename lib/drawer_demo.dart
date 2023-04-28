import 'package:college_demo/pages/page_1.dart';
import 'package:college_demo/pages/page_2.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer demo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text(
                "Drawer Header",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text("Page 1"),
              //tileColor: Colors.cyanAccent,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Page1(),
                ));
              },
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.access_time_filled),
              title: const Text("Page 2"),
              //tileColor: Colors.cyanAccent,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Page2(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
