import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garden_app/screen/plants.dart';
import 'package:garden_app/screen/profile.dart';
import 'package:garden_app/screen/schedule.dart';
import '../utils/util.dart';
import 'home.dart';

class MenuSC extends StatefulWidget {

  @override
  _MenuSCState createState() => _MenuSCState();
}

class _MenuSCState extends State<MenuSC> {
  int _currentIndex = 0;
  final List<Widget> _Screens = [
    HomeSC(),
    PlantsSC(),
    ScheduleSC(),
    // ProfileSC(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.appDarkGreen,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.tree),
            label: 'Plants',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.calendar),
            label: 'Schedule',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(CupertinoIcons.profile_circled),
          //   label: 'Profile',
          // ),
        ],
      ),
    );
  }
}