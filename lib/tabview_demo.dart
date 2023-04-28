import 'package:flutter/material.dart';

class TabViewDemo extends StatefulWidget {
  const TabViewDemo({super.key});

  @override
  State<TabViewDemo> createState() => _TabViewDemo();
}

class _TabViewDemo extends State<TabViewDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar View"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.call),
                text: "Call",
              ),
              Tab(
                icon: Icon(Icons.message),
                text: "Messages",
              ),
              Tab(
                icon: Icon(Icons.contacts),
                text: "Contacts",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.call),
            ),
            Center(
              child: Icon(Icons.message),
            ),
            Center(
              child: Icon(Icons.contacts),
            )
          ],
        ),
      ),
    );
  }
}
