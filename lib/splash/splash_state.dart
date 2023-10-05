import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_ui/splash/splash_state.dart';

class SplashScreenState {
  final bool isLoading;

  const SplashScreenState({
    required this.isLoading,
  });

  factory SplashScreenState.initial() {
    return SplashScreenState(isLoading: true);
  }
}
