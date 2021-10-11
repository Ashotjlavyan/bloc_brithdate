import 'package:equatable/equatable.dart';

abstract class BirthDateEvent extends Equatable {
  const BirthDateEvent();
}

class BirthDateTapNext extends BirthDateEvent {
  const BirthDateTapNext({required this.date});

  final DateTime date;

  @override
  List<Object> get props => [];
}
