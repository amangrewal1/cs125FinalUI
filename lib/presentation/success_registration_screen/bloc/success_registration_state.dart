// ignore_for_file: must_be_immutable

part of 'success_registration_bloc.dart';

/// Represents the state of SuccessRegistration in the application.
class SuccessRegistrationState extends Equatable {
  SuccessRegistrationState({this.successRegistrationModelObj});

  SuccessRegistrationModel? successRegistrationModelObj;

  @override
  List<Object?> get props => [
        successRegistrationModelObj,
      ];

  SuccessRegistrationState copyWith(
      {SuccessRegistrationModel? successRegistrationModelObj}) {
    return SuccessRegistrationState(
      successRegistrationModelObj:
          successRegistrationModelObj ?? this.successRegistrationModelObj,
    );
  }
}
