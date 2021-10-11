import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {
  const HomeInitialState();

  @override
  List<Object> get props => [];
}

class HomeOpenTrackState extends HomeState {
  final String uuid = const Uuid().v4();

  @override
  List<Object> get props => [uuid];
}

class HomeOpenGetPregnantState extends HomeState {
  final String uuid = const Uuid().v4();

  @override
  List<Object> get props => [uuid];
}
