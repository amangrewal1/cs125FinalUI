// ignore_for_file: must_be_immutable

part of 'register_page_activity_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterPageActivity widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegisterPageActivityEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RegisterPageActivity widget is first created.
class RegisterPageActivityInitialEvent extends RegisterPageActivityEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends RegisterPageActivityEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
