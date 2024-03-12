// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:aman_s_application9/core/app_export.dart';

/// This class defines the variables used in the [register_page_info_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisterPageInfoModel extends Equatable {
  RegisterPageInfoModel({
    this.dropdownItemList = const [],
    this.selectedDateOfBirth,
    this.dateOfBirth = "Date of Birth",
  }) {
    selectedDateOfBirth = selectedDateOfBirth ?? DateTime.now();
  }

  List<SelectionPopupModel> dropdownItemList;

  DateTime? selectedDateOfBirth;

  String dateOfBirth;

  RegisterPageInfoModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    DateTime? selectedDateOfBirth,
    String? dateOfBirth,
  }) {
    return RegisterPageInfoModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      selectedDateOfBirth: selectedDateOfBirth ?? this.selectedDateOfBirth,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
    );
  }

  @override
  List<Object?> get props =>
      [dropdownItemList, selectedDateOfBirth, dateOfBirth];
}
