// ignore_for_file: must_be_immutable

part of 'add_hydration_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddHydration widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddHydrationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AddHydration widget is first created.
class AddHydrationInitialEvent extends AddHydrationEvent {
  @override
  List<Object?> get props => [];
}
