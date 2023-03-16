import 'package:demo2/pages/chart.dart';
import 'package:demo2/pages/home.dart';
import 'package:demo2/pages/menu.dart';
import 'package:demo2/pages/profile.dart';
import 'package:demo2/pages/setting.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        showSelectedLabels: true,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          //print(index);
          selectedIndex = index;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items:const [
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq_outlined),
            backgroundColor: Colors.green,
            label: 'Chart',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Menu',
            backgroundColor: Colors.green

          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Profile',
            backgroundColor: Colors.green

          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            backgroundColor: Colors.green

          ),
        ],
      ),
      //page navigation code
      body: 
      selectedIndex == 0 ? const HomePage()
      :selectedIndex == 1 ? const ChartPage()
      :selectedIndex == 2 ? const MenuPage()
      :selectedIndex == 3 ? const ProfilePage()
      :const SettingPage(),
    );
  }
}
