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
          Row(
            children: [
              ResumeHeader(resume: widget.resume),
            ],
          ),
        ]),
        Row(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: jobPositions(widget.resume))
          ],
        )
      ],
    ));
  }
}

// create a Job Position for each job in resume
List<Widget> jobPositions(ResumeDetails resume) {
  final jobs = <Widget>[];

  if (resume.positions.isNotEmpty) {
    for (var jobPosition in resume.positions) {
      jobs.add(Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 10,
              )
            ],
          ),
          Row(children: [Text(jobPosition.jobTitle)]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(jobPosition.company),
              SizedBox(width: 10),
              Text(jobPosition.employmentDates),
              SizedBox(width: 10),
              Text(jobPosition.location)
            ],
          ),
          Row(
            children: [Text(jobPosition.description)],
          ),
        ],
      ));
    }
  }

  return jobs;
}
