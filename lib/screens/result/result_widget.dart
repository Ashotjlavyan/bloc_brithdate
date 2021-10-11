import 'package:bloc_birthdate/shared/widgets/background_widget.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {
  const ResultWidget({Key? key}) : super(key: key);

  @override
  State<ResultWidget> createState() => _State();
}

class _State extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundWidget(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                ))));
  }
}
