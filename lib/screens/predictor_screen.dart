import 'package:flutter/material.dart';
import '../models/random_prompts.dart';

class PredictorScreen extends StatefulWidget {
  const PredictorScreen({Key? key}) : super(key: key);

  @override
  State<PredictorScreen> createState() => _PredictorScreenState();
}

class _PredictorScreenState extends State<PredictorScreen> {
  @override
  Widget build(BuildContext context) {
    final titleHeader = Theme.of(context).textTheme.headline3;
    final questionHeader = Theme.of(context).textTheme.headline5;
    final phraseHeader = Theme.of(context).textTheme.headline4;
    RandomPrompts randomPrompts = RandomPrompts();

    double horizontalPadding(BuildContext context) =>
        MediaQuery.of(context).size.width * 0.04;
    double verticalPadding(BuildContext context) =>
        MediaQuery.of(context).size.height * 0.04;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding(context),
              vertical: verticalPadding(context)),
          child: Text(
            'Call Me ... Maybe?',
            style: titleHeader,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding(context),
                vertical: verticalPadding(context)),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  randomPrompts.roll();
                });
              },
              child: Text(
                'Ask a question ... then tap me for your answer:',
                style: questionHeader,
                textAlign: TextAlign.center,
              ),
            )),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding(context),
              vertical: verticalPadding(context)),
          child: Text(
            randomPrompts.currentPhrase,
            style: phraseHeader,
          ),
        ),
      ],
    );
  }
}
