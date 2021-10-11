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
          Expanded(child: Container()),
          Container(
              width: 50,
              color: Colors.transparent,
              child: const _ArrowButton()),
        ]));
  }
}

class _ArrowButton extends StatelessWidget {
  const _ArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      margin: const EdgeInsets.only(right: 20.0),
      decoration:
          const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
    );
  }
}
