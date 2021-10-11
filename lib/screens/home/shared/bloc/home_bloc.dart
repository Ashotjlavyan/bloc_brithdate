import 'package:bloc_birthdate/screens/home/shared/bloc/events.dart';
import 'package:bloc_birthdate/screens/home/shared/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState);

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is HomeOnTapTrackPeriod) {
      yield HomeOpenTrackState();
    }
    if (event is HomeOnTapGetPregant) {
      yield HomeOpenGetPregnantState();
    }
  }
}
