import 'package:bloc_birthdate/screens/birthdate/shared/bloc/events.dart';
import 'package:bloc_birthdate/screens/birthdate/shared/bloc/states.dart';
import 'package:bloc_birthdate/screens/result/result_widget.dart';
import 'package:bloc_birthdate/shared/widgets/background_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';

import 'shared/bloc/birth_date_bloc.dart';
import 'shared/button_gradient.dart';

class BirthDateWidget extends StatefulWidget {
  const BirthDateWidget({Key? key}) : super(key: key);

  @override
  State<BirthDateWidget> createState() => _State();
}

class _State extends State<BirthDateWidget> {
  late final BirthDateBloc _birthDateBLoc;

  @override
  void initState() {
    _birthDateBLoc = BirthDateBloc(const BirthDateInitialState());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _birthDateBLoc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundWidget(
            child: BlocProvider<BirthDateBloc>(
                create: (context) {
                  return _birthDateBLoc;
                },
                child: _render)));
  }

  Widget get _render => BlocListener<BirthDateBloc, BirthDateState>(
      listener: _listener,
      child: BlocBuilder<BirthDateBloc, BirthDateState>(
          bloc: _birthDateBLoc,
          builder: (context, state) => Container(
              margin: const EdgeInsets.fromLTRB(30, 150, 30, 0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const _Title(),
                Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: _BirthDatePicker()),
                Container(
                    margin: const EdgeInsets.only(top: 50),
                    child:
                        InkWell(child: const _NextButton(), onTap: _onTapNext))
              ]))));

  void _onTapNext() {
    _birthDateBLoc.add(const BirthDateTapNext());
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
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Container(
          margin: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/blue_arrow.png'),
            fit: BoxFit.contain,
          ))),
    );
  }
}

class _BirthDatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: DatePickerWidget(
            pickerTheme: const DateTimePickerTheme(
                showTitle: false,
                itemHeight: 50,
                itemTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w800)),
            maxDateTime: DateTime.now(),
            dateFormat: 'yyyy'));
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Log in your date of birth',
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w800));
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonGradient(
        child: Container(
            height: 50,
            width: 200,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(left: 10),
                          child: const Center(
                              child: Text('Next',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold))))),
                  const _ArrowButton()
                ])));
  }
}

extension _BlocListener on _State {
  void _listener(BuildContext context, BirthDateState state) {
    if (state is BirthDateOpenState) {
      Navigator.push(context,
          CupertinoPageRoute(builder: (context) => const ResultWidget()));
    }
  }
}
