import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aman_s_application9/presentation/success_registration_screen/models/success_registration_model.dart';
part 'success_registration_event.dart';
part 'success_registration_state.dart';

/// A bloc that manages the state of a SuccessRegistration according to the event that is dispatched to it.
class SuccessRegistrationBloc
    extends Bloc<SuccessRegistrationEvent, SuccessRegistrationState> {
  SuccessRegistrationBloc(SuccessRegistrationState initialState)
      : super(initialState) {
    on<SuccessRegistrationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuccessRegistrationInitialEvent event,
    Emitter<SuccessRegistrationState> emit,
  ) async {}
}
