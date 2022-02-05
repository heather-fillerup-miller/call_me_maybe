import 'package:flutter/material.dart';
import '../models/resume_details.dart';

class ResumeHeader extends StatelessWidget {
  final ResumeDetails resume;

  const ResumeHeader({Key? key, required this.resume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameHeader = Theme.of(context).textTheme.headline4;
    final urlEmailHeader = Theme.of(context).textTheme.bodyText2;

    return Column(
      children: [
        Row(children: [
          Text(
            resume.getName,
            style: nameHeader,
          ),
        ]),
        Column(
          children: [
            Row(children: [
              Text(
                resume.getEmail,
              ),
            ]),
            Row(
              children: [
                Text(
                  resume.getShortUrl,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
