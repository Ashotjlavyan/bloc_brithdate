import 'package:bloc_birthdate/shared/constant.dart';
import 'package:bloc_birthdate/shared/widgets/background_widget.dart';
import 'package:flutter/material.dart';

class BirthDateWidget extends StatefulWidget {
  const BirthDateWidget({Key? key}) : super(key: key);

  @override
  State<BirthDateWidget> createState() => _State();
}

class _State extends State<BirthDateWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundWidget(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('sss'),
                      Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: const _NextButton())
                    ]))));
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: const [Text('Next'), _ArrowButton()]);
  }
}

class _ArrowButton extends StatelessWidget {
  const _ArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      margin: const EdgeInsets.only(right: 20.0),
      decoration: const BoxDecoration(
          color: ColorConstant.arrowColor, shape: BoxShape.circle),
      child: Container(
          margin: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/arrow.png'),
            fit: BoxFit.contain,
          ))),
    );
  }
}
