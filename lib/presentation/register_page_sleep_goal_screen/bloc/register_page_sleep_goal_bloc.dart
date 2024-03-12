import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aman_s_application9/presentation/register_page_sleep_goal_screen/models/register_page_sleep_goal_model.dart';
part 'register_page_sleep_goal_event.dart';
part 'register_page_sleep_goal_state.dart';

/// A bloc that manages the state of a RegisterPageSleepGoal according to the event that is dispatched to it.
class RegisterPageSleepGoalBloc
    extends Bloc<RegisterPageSleepGoalEvent, RegisterPageSleepGoalState> {
  RegisterPageSleepGoalBloc(RegisterPageSleepGoalState initialState)
      : super(initialState) {
    on<RegisterPageSleepGoalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegisterPageSleepGoalInitialEvent event,
    Emitter<RegisterPageSleepGoalState> emit,
  ) async {}
}
