import 'package:flutter/material.dart';
import 'package:io_flutter/home/home_screen.dart';
import 'package:io_flutter/schedule/schedule.dart';
import 'package:io_flutter/settingsPage/settings.dart';
import 'package:io_flutter/speakers/speakers.dart';

class IONav extends StatefulWidget {
  const IONav({Key? key}) : super(key: key);

  @override
  _IONavState createState() => _IONavState();
}

class _IONavState extends State<IONav> {
  int _currentPage = 0;
  final _pages = [
    HomeScreen(),
    ScheduleScreen(),
    SpeakersScreen(),
    //CodelabsScreen(),
    SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_currentPage),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Schedule'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Speakers'),
          //BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Codelabs'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        currentIndex: _currentPage,
        onTap: (page) => setState(() => _currentPage = page),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      ),
    );
  }
}
