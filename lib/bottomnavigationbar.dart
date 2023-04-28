import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(
      child: Icon(
        Icons.home,
        size: 150,
      ),
    ),
    Center(
      child: Icon(
        Icons.message,
        size: 150,
      ),
    ),
    Center(
      child: Icon(
        Icons.favorite,
        size: 150,
      ),
    ),
    Center(
      child: Icon(
        Icons.person,
        size: 150,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'BottomNavigationbar ',
        ),
      ),
      backgroundColor: Color.fromARGB(255, 221, 241, 250),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.white,
        iconSize: 24,
        unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
        selectedIconTheme: IconThemeData(size: 30),
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}
