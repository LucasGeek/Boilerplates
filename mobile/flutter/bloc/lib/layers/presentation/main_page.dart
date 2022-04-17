import 'package:flutter/material.dart';

import 'home/pages/home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const List<Widget> _appPages = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // use an IndexedStack to keep the state of all pages
        // and to avoid rebuild them
        body: IndexedStack(
          index: _selectedIndex,
          children: _appPages,
        ),
        bottomNavigationBar: _buildBottomBar());
  }

  Widget _buildBottomBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: 'Bloc',
        ),
        const BottomNavigationBarItem(
          icon: const Icon(Icons.business),
          label: 'Provider',
        ),
        const BottomNavigationBarItem(
          icon: const Icon(Icons.school),
          label: 'StatesRebulder',
        ),
        const BottomNavigationBarItem(
          icon: const Icon(Icons.notifications_active),
          label: 'StateNotifier',
        ),
        const BottomNavigationBarItem(
          icon: const Icon(Icons.notifications),
          label: 'ValueNotifier',
        ),
      ],
      showUnselectedLabels: true,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.shade500,
      type: BottomNavigationBarType.shifting,
      onTap: _onItemTapped,
    );
  }
}
