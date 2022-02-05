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
  final titleHeader = Theme.of(context).textTheme.headline6;
  double horizontalPadding(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.01;
  double verticalPadding(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.01;

  if (resume.positions.isNotEmpty) {
    for (var jobPosition in resume.positions) {
      jobs.add(Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding(context),
            vertical: verticalPadding(context)),
        child: Column(
          children: [
            Row(children: [
              Text(
                jobPosition.jobTitle,
                style: titleHeader,
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(jobPosition.company),
                Text(jobPosition.employmentDates),
                Text(jobPosition.location)
              ],
            ),
            Row(
              children: [Text(jobPosition.description)],
            ),
          ],
        ),
      ));
    }
  }

  return jobs;
}
