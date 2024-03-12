// ignore_for_file: must_be_immutable

part of 'register_page_sleep_goal_bloc.dart';

/// Represents the state of RegisterPageSleepGoal in the application.
class RegisterPageSleepGoalState extends Equatable {
  RegisterPageSleepGoalState({this.registerPageSleepGoalModelObj});

  RegisterPageSleepGoalModel? registerPageSleepGoalModelObj;

  @override
  List<Object?> get props => [
        registerPageSleepGoalModelObj,
      ];

  RegisterPageSleepGoalState copyWith(
      {RegisterPageSleepGoalModel? registerPageSleepGoalModelObj}) {
    return RegisterPageSleepGoalState(
      registerPageSleepGoalModelObj:
          registerPageSleepGoalModelObj ?? this.registerPageSleepGoalModelObj,
    );
  }
}
