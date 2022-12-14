import 'package:flutter/material.dart';
import 'package:reminder_new/pages/my_reminders.dart';
import 'package:reminder_new/pages/statics_page.dart';
import 'package:reminder_new/pages/timeline_page.dart';

import 'create_reminder_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;
  var pages = const [
    StaticsPage(),
    MyReminders(),
    CreateReminderPage(),
    TimeLine(),
    StaticsPage(),
  ];
  Widget currentPage = const StaticsPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: const Color(0xff1CAE81),
          onPressed: () {
            setState(() {
              currentIndex = 2;
              currentPage = pages[2];
            });
          },
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              currentPage = pages[index];
            });
          },
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xff1CAE81),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.text_snippet_rounded,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ''),
          ],
        ),
      ),
    );
  }
}
