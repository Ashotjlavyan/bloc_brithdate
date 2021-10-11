import 'package:bloc_birthdate/shared/widgets/background_widget.dart';
import 'package:flutter/material.dart';

import 'shared/home_item.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _State();
}

class _State extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundWidget(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const HomeItem(),
                      Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: const HomeItem())
                    ]))));
  }
}
