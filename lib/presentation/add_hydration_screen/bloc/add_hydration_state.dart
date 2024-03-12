// ignore_for_file: must_be_immutable

part of 'add_hydration_bloc.dart';

/// Represents the state of AddHydration in the application.
class AddHydrationState extends Equatable {
  AddHydrationState({this.addHydrationModelObj});

  AddHydrationModel? addHydrationModelObj;

  @override
  List<Object?> get props => [
        addHydrationModelObj,
      ];

  AddHydrationState copyWith({AddHydrationModel? addHydrationModelObj}) {
    return AddHydrationState(
      addHydrationModelObj: addHydrationModelObj ?? this.addHydrationModelObj,
    );
  }
}
