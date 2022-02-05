import 'package:flutter/material.dart';
import '../models/resume_details.dart';
import './resume_header.dart';

class BuildResume extends StatefulWidget {
  final ResumeDetails resume;

  const BuildResume({Key? key, required this.resume}) : super(key: key);

  @override
  State<BuildResume> createState() => _BuildResumeState();
}

class _BuildResumeState extends State<BuildResume> {
  @override
  Widget build(BuildContext context) {
    // build a resume with a header, and list of jobs
    return (Column(
      children: [
        Row(children: [
          ResumeHeader(resume: widget.resume),
        ]),
        Row(
          children: [
            Expanded(
                child: Column(children: jobPositions(widget.resume, context)))
          ],
        )
      ],
    ));
  }
}

// create a Job Position for each job in resume
List<Widget> jobPositions(ResumeDetails resume, BuildContext context) {
  final jobs = <Widget>[];
  final titleText = Theme.of(context).textTheme.subtitle1;
  final jobline1Text = Theme.of(context).textTheme.subtitle2;
  final jobline2Text = Theme.of(context).textTheme.bodyText1;
  double horizontalPadding(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.03;
  double verticalPadding(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.02;

  if (resume.positions.isNotEmpty) {
    for (var jobPosition in resume.positions) {
      jobs.add(Padding(
        padding: EdgeInsets.only(top: verticalPadding(context)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: horizontalPadding(context)),
              child: Row(children: [
                Text(
                  jobPosition.jobTitle,
                  style: titleText,
                )
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(jobPosition.company, style: jobline1Text),
                Text(jobPosition.employmentDates, style: jobline1Text),
                Text(jobPosition.location, style: jobline1Text)
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding(context),
                  vertical: verticalPadding(context)),
              child: Row(
                children: <Widget>[
                  Flexible(
                      child: Text(
                    jobPosition.description,
                    textAlign: TextAlign.justify,
                    style: jobline2Text,
                  ))
                ],
              ),
            ),
          ],
        ),
      ));
    }
  }

  return jobs;
}
