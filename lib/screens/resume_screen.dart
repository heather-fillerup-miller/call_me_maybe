import 'package:call_me_maybe/components/build_resume.dart';
import 'package:flutter/material.dart';
import '../models/resume_details.dart';

class ResumeScreen extends StatelessWidget {
  final ResumeDetails resume;

  const ResumeScreen({Key? key, required this.resume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double horizontalPadding(BuildContext context) =>
        MediaQuery.of(context).size.width * 0.04;
    double verticalPadding(BuildContext context) =>
        MediaQuery.of(context).size.height * 0.04;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: constraints.maxWidth),
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding(context),
                vertical: verticalPadding(context),
              ),
              child: BuildResume(resume: resume)),
        ),
      );
    });
  }
}
