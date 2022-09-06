import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import '../widgets/simple_bar_widgets.dart';

class StaticsPage extends StatelessWidget {
  const StaticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int tasks = 5;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .35,
              child: Stack(
                children: [
                  SizedBox(
                    height: size.height * .25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/header.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * .05,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi, Kristine!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'You have $tasks tasks today',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: size.height * .15,
                    left: 20,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          height: size.height * .16,
                          width: size.width * .6,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Meeting with George',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                const Text(
                                  'UX design thinking and colaborations',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.all(0.0),
                                    leading: const Icon(
                                      Icons.access_time,
                                      color: Colors.redAccent,
                                    ),
                                    title: const Text(
                                      '10:45 am',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(15.0)),
                                      ),
                                      height: 90,
                                      width: 40,
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width * .7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Daily Reminder',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Your daily Reminder to maintain your daily routine',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Sun-Fri',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                    height: 140,
                    width: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue.shade200,
                          radius: 35,
                          child: const Icon(
                            Icons.add,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Add new',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 140,
                  width: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade100,
                        radius: 35,
                        child: const Icon(
                          Icons.bed,
                          size: 35,
                          color: Colors.greenAccent,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Add new',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '11:30 am',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Event Statics',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Completed',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: SimpleBarChart(_createSampleData(), animate: true),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  static List<charts.Series<WeekReminders, String>> _createSampleData() {
    final data = [
      WeekReminders('Mon', 1),
      WeekReminders('Tus', 5),
      WeekReminders('Wed', 1),
      WeekReminders('Thu', 10),
      WeekReminders('Fir', 5),
      WeekReminders('Sat', 7),
      WeekReminders('Sun', 3),
    ];

    return [
      charts.Series<WeekReminders, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (WeekReminders week, _) => week.days,
        measureFn: (WeekReminders week, _) => week.tasks,
        data: data,
      )
    ];
  }
}

class WeekReminders {
  final String days;
  final int tasks;

  WeekReminders(this.days, this.tasks);
}