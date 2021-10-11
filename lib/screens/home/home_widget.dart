import 'package:bloc_birthdate/screens/birthdate/birthdate_widget.dart';
import 'package:bloc_birthdate/screens/home/shared/bloc/events.dart';
import 'package:bloc_birthdate/screens/home/shared/bloc/home_bloc.dart';
import 'package:bloc_birthdate/screens/home/shared/bloc/states.dart';
import 'package:bloc_birthdate/shared/widgets/background_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'shared/home_item.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _State();
}

class _State extends State<HomeWidget> {
  late final HomeBloc _homeBloc;
  @override
  void initState() {
    _homeBloc = HomeBloc(const HomeInitialState());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _homeBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundWidget(
            child: BlocProvider<HomeBloc>(
                create: (context) {
                  return _homeBloc;
                },
                child: _render())));
  }

  Widget _render() {
    return BlocListener<HomeBloc, HomeState>(
        listener: _listener,
        child: BlocBuilder<HomeBloc, HomeState>(
            bloc: _homeBloc,
            builder: (context, state) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(child: const HomeItem(), onTap: _onTapTrack),
                      InkWell(
                          child: Container(
                              margin: const EdgeInsets.only(top: 50),
                              child: const HomeItem()),
                          onTap: _onTapPregnante)
                    ]))));
  }

  void _onTapTrack() {
    _homeBloc.add(const HomeOnTapTrackPeriod());
  }

  void _onTapPregnante() {
    _homeBloc.add(const HomeOnTapGetPregant());
  }
}

extension _BlocListener on _State {
  void _listener(BuildContext context, HomeState state) {
    if (state is HomeOpenTrackState) {
      Navigator.push(context,
          CupertinoPageRoute(builder: (context) => const BirthDateWidget()));
    }
    if (state is HomeOpenGetPregnantState) {
      Navigator.push(context,
          CupertinoPageRoute(builder: (context) => const BirthDateWidget()));
    }
  }
}
