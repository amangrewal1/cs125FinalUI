// ignore_for_file: must_be_immutable

part of 'add_sleep_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddSleep widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddSleepEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AddSleep widget is first created.
class AddSleepInitialEvent extends AddSleepEvent {
  @override
  List<Object?> get props => [];
}
