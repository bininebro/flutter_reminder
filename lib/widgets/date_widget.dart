import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final bool isSelected;
  final String date;
  final int day;
  const DateWidget(
      {Key? key,
      required this.isSelected,
      required this.date,
      required this.day})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 60,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xff1CAE81) : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            date,
            style: TextStyle(
              fontSize: 15,
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            day.toString(),
            style: TextStyle(
              fontSize: 15,
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
