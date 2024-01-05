import 'package:flutter/material.dart';
import 'package:flutter_getstream_chat/presentation/screens/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const ChatListScreen(),
    const ContactListScreen(),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  Widget _bottomNavigation() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Chat'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: 'Contacts'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings'
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      elevation: 2.0,
    );
  }
}
