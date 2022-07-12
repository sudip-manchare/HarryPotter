import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auctioneer'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Past'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Present'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Future'
          ),
        ],
      ),
    );
  }
}