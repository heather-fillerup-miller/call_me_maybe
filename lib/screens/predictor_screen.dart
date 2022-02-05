import '../models/flower.dart';
import 'package:flutter/material.dart';


class Predictor extends StatelessWidget {
  const Predictor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Flower()));
  }
}
