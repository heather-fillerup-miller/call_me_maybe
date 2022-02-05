import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'die.dart';

class Flower extends StatefulWidget {
  const Flower({Key? key}) : super(key: key);

  @override
  State<Flower> createState() => _FlowerState();
}

class _FlowerState extends State<Flower> {
  final die = Die(numberOfSides: 20);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          die.currentValue.toString(),
          style: Theme.of(context).textTheme.headline4,
        ),
        Padding(
          padding: EdgeInsets.all(padding(context)),
          child: GestureDetector(
              onTap: () => launch(('sms:5555555555')),
              child: Image.asset('assets/images/orchid.jpg')),
        )
      ],
    );
  }

  void displaySnackBar(BuildContext context) {
    const snackBar = SnackBar(content: Text('Flower Power!'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  double padding(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return MediaQuery.of(context).size.width * 0.05;
    } else {
      return MediaQuery.of(context).size.width * 0.1;
    }
  }
}
