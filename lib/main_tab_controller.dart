import 'package:flutter/material.dart';
import 'screens/predictor_screen.dart';
import 'screens/resume_screen.dart';
import 'screens/business_card_screen.dart';
import 'models/resume_details.dart';

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.badge_outlined)),
    Tab(icon: Icon(Icons.emoji_objects_outlined)),
    Tab(icon: Icon(Icons.call))
  ];

  final ResumeDetails resume;

  const MainTabController({Key? key, required this.resume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: AppBar(
                  title: const Center(
                    child: Text('Call Me Maybe', textAlign: TextAlign.center),
                  ),
                  bottom: const TabBar(tabs: tabs)),
            ),
            body: TabBarView(children: [
              BusinessCardScreen(contact: resume.getContact),
              ResumeScreen(resume: resume),
              const PredictorScreen()
            ])));
  }
}
