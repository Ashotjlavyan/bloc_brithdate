import 'package:equatable/equatable.dart';

abstract class BirthDateState extends Equatable {
  const BirthDateState();

  @override
  List<Object> get props => [];
}

class BirthDateInitialState extends BirthDateState {
  const BirthDateInitialState();

  @override
  List<Object> get props => [];
}

class BirthDateOpenState extends BirthDateState {
  const BirthDateOpenState({required this.date});
  final DateTime date;
  @override
  List<Object> get props => [date];
}
