import 'package:flutter/material.dart';
import 'main_tab_controller.dart';
import 'models/resume_details.dart';

class MyApp extends StatelessWidget {
  final ResumeDetails resume;

  const MyApp({Key? key, required this.resume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.teal,
            fontFamily: 'Roboto Condensed',
            textTheme: const TextTheme(
                headline3: TextStyle(color: Colors.white),
                headline4: TextStyle(color: Colors.white),
                headline5: TextStyle(color: Colors.white70),
                headline6: TextStyle(color: Colors.white70),
                bodyText1: TextStyle(color: Colors.white70),
                bodyText2: TextStyle(color: Colors.white),
                subtitle1: TextStyle(color: Colors.white),
                subtitle2: TextStyle(color: Colors.white)),
            scaffoldBackgroundColor: Colors.grey,
            backgroundColor: Colors.grey),
        home: MainTabController(resume: resume));
  }
}
