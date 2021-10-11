import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomeOnTapTrackPeriod extends HomeEvent {
  const HomeOnTapTrackPeriod();

  @override
  List<Object> get props => [];
}

class HomeOnTapGetPregant extends HomeEvent {
  const HomeOnTapGetPregant();

  @override
  List<Object> get props => [];
}
