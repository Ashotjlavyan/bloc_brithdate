import 'package:bloc_birthdate/shared/extension/date.dart';
import 'package:bloc_birthdate/shared/widgets/background_widget.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {
  const ResultWidget({required this.date, Key? key}) : super(key: key);

  final DateTime date;

  @override
  State<ResultWidget> createState() => _State();
}

class _State extends State<ResultWidget> {
  DateTime get _date => widget.date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundWidget(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(_date.format('yyyy'))]))));
  }
}
