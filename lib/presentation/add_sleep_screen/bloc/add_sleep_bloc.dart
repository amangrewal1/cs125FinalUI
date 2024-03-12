import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aman_s_application9/presentation/add_sleep_screen/models/add_sleep_model.dart';
part 'add_sleep_event.dart';
part 'add_sleep_state.dart';

/// A bloc that manages the state of a AddSleep according to the event that is dispatched to it.
class AddSleepBloc extends Bloc<AddSleepEvent, AddSleepState> {
  AddSleepBloc(AddSleepState initialState) : super(initialState) {
    on<AddSleepInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddSleepInitialEvent event,
    Emitter<AddSleepState> emit,
  ) async {}
}
