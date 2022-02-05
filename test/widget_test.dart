// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:call_me_maybe/call_me_maybe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:call_me_maybe/my_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(
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

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
