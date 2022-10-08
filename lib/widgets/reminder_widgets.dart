import 'dart:math' as math;

import 'package:flutter/material.dart';

class ReminderWidget extends StatelessWidget {
  const ReminderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.check_circle,
        color: Color(0xff1CAE81),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      tileColor: Colors.grey.shade100,
      contentPadding: EdgeInsets.all(8),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Book Tickets',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(height: 6),
          Text(
            'dfsfsd fsd ',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Transform.rotate(
                angle: math.pi / -8,
                child: const Icon(Icons.send, size: 15),
              ),
              const SizedBox(width: 10),
              Text(
                'dfsfsd fsd ',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('09:15 am'), Icon(Icons.delete_forever_outlined)],
      ),
    );
  }
}
