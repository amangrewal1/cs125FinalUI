// ignore_for_file: must_be_immutable

part of 'success_registration_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SuccessRegistration widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuccessRegistrationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SuccessRegistration widget is first created.
class SuccessRegistrationInitialEvent extends SuccessRegistrationEvent {
  @override
  List<Object?> get props => [];
}
