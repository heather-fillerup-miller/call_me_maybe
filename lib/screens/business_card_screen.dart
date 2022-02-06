import 'package:flutter/material.dart';
import '../components/contact_links.dart';
import '../models/contact_info.dart';

class BusinessCardScreen extends StatefulWidget {
  final ContactInfo contact;

  const BusinessCardScreen({Key? key, required this.contact}) : super(key: key);

  @override
  State<BusinessCardScreen> createState() => _BusinessCardScreenState();
}

class _BusinessCardScreenState extends State<BusinessCardScreen> {
  @override
  Widget build(BuildContext context) {
    final nameHeader = Theme.of(context).textTheme.headline4;
    final titleHeader = Theme.of(context).textTheme.headline5;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.all(padding(context)),
            child: Image.asset(
              widget.contact.imageFile,
              scale: scale(context),
            )),
        Text(
          widget.contact.name,
          style: nameHeader,
        ),
        Text(
          widget.contact.title,
          style: titleHeader,
        ),
        ContactLinks(contact: widget.contact),
      ],
    );
  }

  double padding(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return MediaQuery.of(context).size.width * 0.01;
    } else {
      return MediaQuery.of(context).size.width * 0.02;
    }
  }

  double scale(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return 2.0;
    } else {
      return 1.0;
    }
  }
}
