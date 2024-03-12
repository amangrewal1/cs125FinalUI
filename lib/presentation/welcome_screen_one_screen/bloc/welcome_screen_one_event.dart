// ignore_for_file: must_be_immutable

part of 'welcome_screen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeScreenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeScreenOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WelcomeScreenOne widget is first created.
class WelcomeScreenOneInitialEvent extends WelcomeScreenOneEvent {
  @override
  List<Object?> get props => [];
}
