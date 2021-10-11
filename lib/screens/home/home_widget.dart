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
  late HomeBloc homeBloc;
  @override
  void initState() {
    homeBloc = HomeBloc(const HomeInitialState());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    homeBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundWidget(
            child: BlocProvider<HomeBloc>(
                create: (context) {
                  return homeBloc;
                },
                child: _render())));
  }

  Widget _render() {
    return BlocListener<HomeBloc, HomeState>(
        listener: _listener,
        child: BlocBuilder<HomeBloc, HomeState>(
            bloc: homeBloc,
            builder: (context, state) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(child: const HomeItem(), onTap: _onTapTrack),
                      Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: const HomeItem())
                    ]))));
  }

  void _onTapTrack() {
    homeBloc.add(const HomeOnTapTrackPeriod());
  }
}

extension _BlocListener on _State {
  void _listener(BuildContext context, HomeState state) {
    if (state is HomeOnTapTrackPeriod) {
      Navigator.push(context,
          CupertinoPageRoute(builder: (context) => const BirthDateWidget()));
    }
  }
}
