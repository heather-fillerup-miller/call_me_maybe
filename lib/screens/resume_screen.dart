import 'package:call_me_maybe/components/build_resume.dart';
import 'package:flutter/material.dart';
import '../models/resume_details.dart';

class ResumeScreen extends StatelessWidget {
  final ResumeDetails resume;

  const ResumeScreen({Key? key, required this.resume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double horizontalPadding(BuildContext context) =>
        MediaQuery.of(context).size.width * 0.05;
    double verticalPadding(BuildContext context) =>
        MediaQuery.of(context).size.height * 0.05;

    final nameHeader = Theme.of(context).textTheme.headline4;
    final urlEmailHeader = Theme.of(context).textTheme.bodyText2;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: viewportConstraints.maxWidth,
          ),
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
