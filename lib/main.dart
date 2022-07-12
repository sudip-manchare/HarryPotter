import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: First_Page(),
  ));
}

class First_Page extends StatefulWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auctioneer Home'),
      ),
      body: Center(
        child: Text('No Items'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Second_Page()),
          );
        },
        child: Text('New'),
      ),
    );
  }
}


class Second_Page extends StatefulWidget {
  const Second_Page({Key? key}) : super(key: key);

  @override
  State<Second_Page> createState() => _Second_PageState();
}

class _Second_PageState extends State<Second_Page> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Home'),
      ),
    );
  }
}



