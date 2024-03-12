import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aman_s_application9/presentation/add_hydration_screen/models/add_hydration_model.dart';
part 'add_hydration_event.dart';
part 'add_hydration_state.dart';

/// A bloc that manages the state of a AddHydration according to the event that is dispatched to it.
class AddHydrationBloc extends Bloc<AddHydrationEvent, AddHydrationState> {
  AddHydrationBloc(AddHydrationState initialState) : super(initialState) {
    on<AddHydrationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddHydrationInitialEvent event,
    Emitter<AddHydrationState> emit,
  ) async {}
}
