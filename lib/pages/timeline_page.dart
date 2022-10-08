import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/date_widget.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var dateFormat = DateFormat('EEEE, dd MMM yyyy');
    var dataTime = DateTime.now();
    var date = dateFormat.format(dataTime);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
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
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Image.asset(
                        'assets/header.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * .12,
                    left: 30,
                    child: const Text(
                      'My Timeline',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: size.height * .15,
                    left: 10,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Container(
                            height: 140,
                            width: MediaQuery.of(context).size.width * .88,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(0, 1),
                                    blurRadius: .3,
                                    spreadRadius: .3,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    spacing: 10,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      const Icon(Icons.date_range),
                                      Text(
                                        date,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      DateWidget(
                                          date: 'Mon',
                                          day: 23,
                                          isSelected: false),
                                      DateWidget(
                                          date: 'Tus',
                                          day: 24,
                                          isSelected: false),
                                      DateWidget(
                                          date: 'Wed',
                                          day: 25,
                                          isSelected: true),
                                      DateWidget(
                                          date: 'Thu',
                                          day: 26,
                                          isSelected: false),
                                      DateWidget(
                                          date: 'Fri',
                                          day: 27,
                                          isSelected: false),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const Text(
                    '08:00',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * .77,
                    decoration: const BoxDecoration(
                      color: Color(0xffba9ca7ff),
                      border: Border(
                        left: BorderSide(color: Colors.black, width: 3),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Meeting with Designer',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.minimize)
                            ],
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: const [
                              Icon(Icons.access_time),
                              SizedBox(width: 10),
                              Text(
                                '08:30-11:30',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              Icon(Icons.sticky_note_2_outlined),
                              SizedBox(width: 10),
                              Text(
                                'Sun-Fri',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
