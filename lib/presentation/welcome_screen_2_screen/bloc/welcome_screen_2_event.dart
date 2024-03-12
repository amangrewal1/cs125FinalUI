// ignore_for_file: must_be_immutable

part of 'welcome_screen_2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeScreen2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeScreen2Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WelcomeScreen2 widget is first created.
class WelcomeScreen2InitialEvent extends WelcomeScreen2Event {
  @override
  List<Object?> get props => [];
}
