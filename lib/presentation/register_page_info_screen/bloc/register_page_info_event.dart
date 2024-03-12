// ignore_for_file: must_be_immutable

part of 'register_page_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterPageInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegisterPageInfoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RegisterPageInfo widget is first created.
class RegisterPageInfoInitialEvent extends RegisterPageInfoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends RegisterPageInfoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing date
class ChangeDateEvent extends RegisterPageInfoEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}
