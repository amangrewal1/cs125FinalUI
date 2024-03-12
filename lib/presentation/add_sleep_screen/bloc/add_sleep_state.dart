// ignore_for_file: must_be_immutable

part of 'add_sleep_bloc.dart';

/// Represents the state of AddSleep in the application.
class AddSleepState extends Equatable {
  AddSleepState({this.addSleepModelObj});

  AddSleepModel? addSleepModelObj;

  @override
  List<Object?> get props => [
        addSleepModelObj,
      ];

  AddSleepState copyWith({AddSleepModel? addSleepModelObj}) {
    return AddSleepState(
      addSleepModelObj: addSleepModelObj ?? this.addSleepModelObj,
    );
  }
}
