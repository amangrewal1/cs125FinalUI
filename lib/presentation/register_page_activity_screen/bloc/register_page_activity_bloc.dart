import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aman_s_application9/presentation/register_page_activity_screen/models/register_page_activity_model.dart';
part 'register_page_activity_event.dart';
part 'register_page_activity_state.dart';

/// A bloc that manages the state of a RegisterPageActivity according to the event that is dispatched to it.
class RegisterPageActivityBloc
    extends Bloc<RegisterPageActivityEvent, RegisterPageActivityState> {
  RegisterPageActivityBloc(RegisterPageActivityState initialState)
      : super(initialState) {
    on<RegisterPageActivityInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    RegisterPageActivityInitialEvent event,
    Emitter<RegisterPageActivityState> emit,
  ) async {
    emit(state.copyWith(
        registerPageActivityModelObj: state.registerPageActivityModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<RegisterPageActivityState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
