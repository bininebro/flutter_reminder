import 'package:flutter/material.dart';
import 'package:reminder_new/pages/day_reminder_page.dart';

class MyReminders extends StatefulWidget {
  const MyReminders({Key? key}) : super(key: key);

  @override
  State<MyReminders> createState() => _MyRemindersState();
}

class _MyRemindersState extends State<MyReminders> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            flexibleSpace: const Image(
          image: AssetImage(
            'assets/header.png',
          ),
          fit: BoxFit.cover,
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'My Reminders',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: kToolbarHeight - 8.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.red,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.green),
                      tabs: const [Text('Week'), Text('Day'), Text('Month')])),
            ),
            SizedBox(
              height: size.height * .7,
              child: const TabBarView(
                children: [Text('Day'), DayReminder(), Text('Month')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
