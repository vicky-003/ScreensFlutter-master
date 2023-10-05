import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ui/splash/splash_state.dart';



class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenState.initial());

  Future<void> goToNextScreen(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));

    // Navigate to the next screen here
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(context).pushNamed('/SignUPRegisterIllustration');
    });
  }
}
