// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:aman_s_application9/core/app_export.dart';

/// This class defines the variables used in the [register_page_activity_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisterPageActivityModel extends Equatable {
  RegisterPageActivityModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  RegisterPageActivityModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return RegisterPageActivityModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
