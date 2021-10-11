import 'package:equatable/equatable.dart';

abstract class BirthDateEvent extends Equatable {
  const BirthDateEvent();
}

class BirthDateTapNext extends BirthDateEvent {
  const BirthDateTapNext();

  @override
  List<Object> get props => [];
}
