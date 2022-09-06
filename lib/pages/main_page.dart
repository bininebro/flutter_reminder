import 'package:flutter/material.dart';
import 'package:reminder_new/pages/statics_page.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const StaticsPage(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          child: const Icon(
            Icons.add,
          ),
          backgroundColor: Colors.green,
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
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
