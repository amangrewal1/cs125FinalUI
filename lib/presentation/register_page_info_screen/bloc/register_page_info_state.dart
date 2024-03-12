// ignore_for_file: must_be_immutable

part of 'register_page_info_bloc.dart';

/// Represents the state of RegisterPageInfo in the application.
class RegisterPageInfoState extends Equatable {
  RegisterPageInfoState({
    this.nameController,
    this.yourWeightController,
    this.shareController,
    this.selectedDropDownValue,
    this.registerPageInfoModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? yourWeightController;

  TextEditingController? shareController;

  SelectionPopupModel? selectedDropDownValue;

  RegisterPageInfoModel? registerPageInfoModelObj;

  @override
  List<Object?> get props => [
        nameController,
        yourWeightController,
        shareController,
        selectedDropDownValue,
        registerPageInfoModelObj,
      ];

  RegisterPageInfoState copyWith({
    TextEditingController? nameController,
    TextEditingController? yourWeightController,
    TextEditingController? shareController,
    SelectionPopupModel? selectedDropDownValue,
    RegisterPageInfoModel? registerPageInfoModelObj,
  }) {
    return RegisterPageInfoState(
      nameController: nameController ?? this.nameController,
      yourWeightController: yourWeightController ?? this.yourWeightController,
      shareController: shareController ?? this.shareController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      registerPageInfoModelObj:
          registerPageInfoModelObj ?? this.registerPageInfoModelObj,
    );
  }
}
