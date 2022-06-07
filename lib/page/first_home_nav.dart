import 'package:flutter/material.dart';
import 'package:projek_kpam_lifehealth/page/home_page.dart';
import 'package:projek_kpam_lifehealth/page/login_page.dart';
import 'package:projek_kpam_lifehealth/page/profile_page.dart';
import 'package:projek_kpam_lifehealth/page/register_page.dart';

import '../theme.dart';

class FirstHomePage extends StatefulWidget {
  const FirstHomePage({Key? key}) : super(key: key);

  @override
  State<FirstHomePage> createState() => _FirstHomePageState();
}

class _FirstHomePageState extends State<FirstHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    RegisterPage(),
    LoginPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Pendaftaran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Catatan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
