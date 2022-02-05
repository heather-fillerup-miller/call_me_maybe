import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:call_me_maybe/models/prior_position.dart';
import 'my_app.dart';
import 'models/resume_details.dart';
import './models/contact_info.dart';
import './models/prior_position.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(MyApp(
      resume: ResumeDetails(
          contact: ContactInfo(
              name: 'Heather Fillerup',
              email: 'Heather.Miller@ibm.com',
              phoneNo: '978.616.9837',
              shortUrl: 'in/heather-fillerup-miller',
              webUrl: 'https://www.linkedin.com/',
              imageFile: 'assets/images/heather.jpg',
              title: 'Software Developer'),
          positions: [
        PriorPosition(
            jobTitle: 'Software Developer',
            company: 'IBM',
            employmentDates: '2021-current',
            location: 'DFW, TX',
            description: 'App Design'),
        PriorPosition(
            jobTitle: 'IT Information Systems Specialist',
            company: 'Hawaii Pacific Health',
            employmentDates: '2018-current',
            location: 'Honolulu, HI',
            description: 'Information Systems management')
      ])));
}
