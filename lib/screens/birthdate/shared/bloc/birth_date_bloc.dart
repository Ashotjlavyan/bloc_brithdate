import 'package:bloc_birthdate/screens/birthdate/shared/bloc/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class BirthDateBloc extends Bloc<BirthDateEvent, BirthDateState> {
  BirthDateBloc(BirthDateState initialState) : super(initialState);

  @override
  Stream<BirthDateState> mapEventToState(BirthDateEvent event) async* {
    if (event is BirthDateTapNext) {
      yield const BirthDateOpenState();
    }
  }
}
