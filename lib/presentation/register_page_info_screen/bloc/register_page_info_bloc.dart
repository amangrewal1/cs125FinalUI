import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aman_s_application9/presentation/register_page_info_screen/models/register_page_info_model.dart';
part 'register_page_info_event.dart';
part 'register_page_info_state.dart';

/// A bloc that manages the state of a RegisterPageInfo according to the event that is dispatched to it.
class RegisterPageInfoBloc
    extends Bloc<RegisterPageInfoEvent, RegisterPageInfoState> {
  RegisterPageInfoBloc(RegisterPageInfoState initialState)
      : super(initialState) {
    on<RegisterPageInfoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDateEvent>(_changeDate);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<RegisterPageInfoState> emit,
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

  _onInitialize(
    RegisterPageInfoInitialEvent event,
    Emitter<RegisterPageInfoState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        yourWeightController: TextEditingController(),
        shareController: TextEditingController()));
    emit(state.copyWith(
        registerPageInfoModelObj: state.registerPageInfoModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<RegisterPageInfoState> emit,
  ) {
    emit(state.copyWith(
        registerPageInfoModelObj: state.registerPageInfoModelObj?.copyWith(
      dateOfBirth: event.date,
    )));
  }
}
