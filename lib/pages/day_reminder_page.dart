import 'package:flutter/material.dart';

import '../widgets/reminder_widgets.dart';

class DayReminder extends StatelessWidget {
  const DayReminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Dismissible(
          key: UniqueKey(),
          direction: DismissDirection.startToEnd,
          onDismissed: (_) {
//remove from database with time ticker
          },
          background: Container(
            child: Row(
              children: const [
                SizedBox(width: 45),
                Icon(Icons.dangerous, size: 35, color: Colors.grey),
                Icon(
                  Icons.check_circle,
                  color: Color(0xff1CAE81),
                  size: 35,
                )
              ],
            ),
          ),
          child: const ReminderWidget(),
        )
      ],
    );
  }
}
