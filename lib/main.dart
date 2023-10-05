import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ui/splash/SplashScreen.dart';
import 'package:test_ui/splash/splash_cubit.dart';

import 'ClicktoShowValue.dart';
import 'CopyText.dart';
import 'P2PScreen/click_to_show_text/click_to_show_text_page.dart';
import 'ProductAPIData.dart';
import 'Super/LoginRegisterIllustration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ClickToShowTextPage()
    );
  }
}




/*Widget build(BuildContext context) {
  return BlocProvider<SplashScreenCubit>(
    create: (context) => SplashScreenCubit(),
    child: SplashScreenC(),
  );
}*/