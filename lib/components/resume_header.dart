import 'package:flutter/material.dart';
import '../models/resume_details.dart';

class ResumeHeader extends StatelessWidget {
  final ResumeDetails resume;

  const ResumeHeader({Key? key, required this.resume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameHeader = Theme.of(context).textTheme.headline4;
    final subtitleHeader = Theme.of(context).textTheme.headline6;

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
                style: subtitleHeader,
              ),
            ]),
            Row(
              children: [
                Text(
                  resume.getShortUrl,
                  style: subtitleHeader,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
