import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/contact_info.dart';

class ContactLinks extends StatelessWidget {
  final ContactInfo contact;

  const ContactLinks({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlEmailHeader = Theme.of(context).textTheme.bodyText2;
    final phoneHeader = Theme.of(context).textTheme.headline6;

    return Column(children: [
      Container(
        padding: EdgeInsets.all(padding(context)),
        child: GestureDetector(
            onTap: () => launch('sms: ${contact.phoneNo}'),
            child: Text(contact.phoneNo, style: phoneHeader)),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
        Container(
          padding: EdgeInsets.all(padding(context)),
          child: GestureDetector(
            onTap: () => _launchURL(contact),
            child: Text(contact.shortUrl, style: urlEmailHeader),
          ),
        ),
        Text(contact.email, style: urlEmailHeader)
      ]),
    ]);
  }
}

double padding(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.landscape) {
    return MediaQuery.of(context).size.width * 0.01;
  } else {
    return MediaQuery.of(context).size.width * 0.02;
  }
}

// code from: https://pub.dev/packages/url_launcher
void _launchURL(ContactInfo contact) async {
  final _url = contact.webUrl + contact.shortUrl;
  if (!await launch(_url)) throw 'Could not launch $_url';
}
