// ignore_for_file: must_be_immutable

part of 'register_page_sleep_goal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterPageSleepGoal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegisterPageSleepGoalEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RegisterPageSleepGoal widget is first created.
class RegisterPageSleepGoalInitialEvent extends RegisterPageSleepGoalEvent {
  @override
  List<Object?> get props => [];
}
