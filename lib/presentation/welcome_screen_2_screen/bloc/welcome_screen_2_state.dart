// ignore_for_file: must_be_immutable

part of 'welcome_screen_2_bloc.dart';

/// Represents the state of WelcomeScreen2 in the application.
class WelcomeScreen2State extends Equatable {
  WelcomeScreen2State({this.welcomeScreen2ModelObj});

  WelcomeScreen2Model? welcomeScreen2ModelObj;

  @override
  List<Object?> get props => [
        welcomeScreen2ModelObj,
      ];

  WelcomeScreen2State copyWith({WelcomeScreen2Model? welcomeScreen2ModelObj}) {
    return WelcomeScreen2State(
      welcomeScreen2ModelObj:
          welcomeScreen2ModelObj ?? this.welcomeScreen2ModelObj,
    );
  }
}
