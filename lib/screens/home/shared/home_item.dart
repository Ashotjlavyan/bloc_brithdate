import 'package:bloc_birthdate/shared/constant.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: ColorConstant.buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        height: 150,
        child: Row(children: [
          Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 10), child: const _Content())),
          Container(
              width: 50,
              color: Colors.transparent,
              child: const _ArrowButton()),
        ]));
  }
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Align(
              alignment: Alignment.topLeft,
              child: Text('Track my period',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text('Contraception and welldbering',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )))),
        ]);
  }
}

class _ArrowButton extends StatelessWidget {
  const _ArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
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
