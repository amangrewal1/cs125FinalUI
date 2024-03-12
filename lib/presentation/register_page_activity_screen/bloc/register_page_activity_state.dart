// ignore_for_file: must_be_immutable

part of 'register_page_activity_bloc.dart';

/// Represents the state of RegisterPageActivity in the application.
class RegisterPageActivityState extends Equatable {
  RegisterPageActivityState({
    this.selectedDropDownValue,
    this.registerPageActivityModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  RegisterPageActivityModel? registerPageActivityModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        registerPageActivityModelObj,
      ];

  RegisterPageActivityState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    RegisterPageActivityModel? registerPageActivityModelObj,
  }) {
    return RegisterPageActivityState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      registerPageActivityModelObj:
          registerPageActivityModelObj ?? this.registerPageActivityModelObj,
    );
  }
}
