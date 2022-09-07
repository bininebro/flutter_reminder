import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_new/pages/main_page.dart';
import 'package:reminder_new/pages/spalash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool firstRun = true;
  @override
  initState() {
    _asyncMethod().then((value) => firstRun = value ?? true);
  }

  Future<bool?> _asyncMethod() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? firstTime = prefs.getBool('first_time');

    prefs.setBool('first_time', false);
    return firstTime;
  }

  @override
  Widget build(BuildContext context) {
    return firstRun ? const Splash_page() : const Mainpage();
  }
}
