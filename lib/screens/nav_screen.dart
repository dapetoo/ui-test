import 'package:flutter/material.dart';
import 'screens.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return Card(
      elevation: 0.5,
      //color: Colors.white,
      child: BottomNavigationBar(
        selectedItemColor: Color(0xFFEB7549),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.sort), label: 'Home'),
          BottomNavigationBarItem(
              icon: Stack(
                //overflow: Overflow.clip,
                alignment: Alignment.topRight,
                children: [
                  Icon(Icons.assignment),
                  Positioned(
                    child: Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 8.0,
                    ),
                    top: -1.5,
                    right: 1,
                  ),
                ],
              ),
              label: 'Note'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: RawMaterialButton(
                  constraints:
                      BoxConstraints.tightFor(width: 50.0, height: 50.0),
                  shape: CircleBorder(),
                  fillColor: Color(0xFF614AF5),
                  child: Icon(
                    Icons.add,
                    size: 36.0,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.brightness_low), label: 'Settings'),
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconSize: 30,
        selectedFontSize: 11.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11.0,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
