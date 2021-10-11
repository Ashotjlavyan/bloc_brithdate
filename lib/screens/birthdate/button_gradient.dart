import 'package:flutter/material.dart';

class ButtonGradient extends StatelessWidget {
  const ButtonGradient({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end:
              Alignment(0, 0.0),
          colors: <Color>[
            Color(0xff494A80),
            Color(0xff8C8CB0)
          ], // red to yellow
        ),
      ),
    );
  }
}
