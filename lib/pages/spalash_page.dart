import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_new/pages/main_page.dart';

class Splash_page extends StatelessWidget {
  const Splash_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('assets/Main_Page1.png'),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 280,
            left: 20,
            child: SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Maintain a convenient',
                    style: TextStyle(fontSize: 35, color: Colors.white70),
                  ),
                  Text(
                    'Simple and Easy',
                    style: TextStyle(fontSize: 35, color: Colors.white70),
                  ),
                  Text(
                    'LifeStyle',
                    style: TextStyle(fontSize: 35, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 280,
            left: 20,
            child: Text(
              'help to asure that you are up to date',
              style: TextStyle(fontSize: 18, color: Colors.white60),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 20,
            child: ElevatedButton(
              onPressed: dsfs,
              style: ElevatedButton.styleFrom(primary: Colors.white),
              child: Container(
                width: size.width * .8,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Get Started',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  VoidCallback? dsfs() {
    Get.to(const Mainpage());
  }
}
