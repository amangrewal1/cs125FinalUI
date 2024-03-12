import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aman_s_application9/presentation/welcome_screen_2_screen/models/welcome_screen_2_model.dart';
part 'welcome_screen_2_event.dart';
part 'welcome_screen_2_state.dart';

/// A bloc that manages the state of a WelcomeScreen2 according to the event that is dispatched to it.
class WelcomeScreen2Bloc
    extends Bloc<WelcomeScreen2Event, WelcomeScreen2State> {
  WelcomeScreen2Bloc(WelcomeScreen2State initialState) : super(initialState) {
    on<WelcomeScreen2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeScreen2InitialEvent event,
    Emitter<WelcomeScreen2State> emit,
  ) async {}
}
