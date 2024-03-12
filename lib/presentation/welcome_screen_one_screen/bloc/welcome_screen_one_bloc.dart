import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aman_s_application9/presentation/welcome_screen_one_screen/models/welcome_screen_one_model.dart';
part 'welcome_screen_one_event.dart';
part 'welcome_screen_one_state.dart';

/// A bloc that manages the state of a WelcomeScreenOne according to the event that is dispatched to it.
class WelcomeScreenOneBloc
    extends Bloc<WelcomeScreenOneEvent, WelcomeScreenOneState> {
  WelcomeScreenOneBloc(WelcomeScreenOneState initialState)
      : super(initialState) {
    on<WelcomeScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeScreenOneInitialEvent event,
    Emitter<WelcomeScreenOneState> emit,
  ) async {}
}
