import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'mytask.dart';
import 'settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickList',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuickListHome(),
    );
  }
}

class QuickListHome extends StatefulWidget {
  @override
  _QuickListHomeState createState() => _QuickListHomeState();
}

class _QuickListHomeState extends State<QuickListHome> {
  int _selectedIndex = 0;

  // List of pages for each menu (without 'const')
  List<Widget> _pages = <Widget>[
    MyTaskScreen(),
    DashboardScreen(), // Dashboard page
    // My Task page
    SettingScreen(), // Setting page
  ];

  // Function to handle bottom navigation item taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QuickList'),
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'MyTask',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
