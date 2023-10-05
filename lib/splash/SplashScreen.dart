import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ui/splash/splash_cubit.dart';
import 'package:test_ui/splash/splash_state.dart';


class SplashScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<SplashScreenCubit>(context);

    return BlocBuilder<SplashScreenCubit, SplashScreenState>(
      builder: (context, state) {
        if (state.isLoading) {
          // Display your splash screen UI here while loading
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Your splash screen UI here
                    Container(
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 50),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(50),
                                child: Image(image: AssetImage('assets/images/logo.jpg')),
                              ),
                              Directionality(
                                textDirection: TextDirection.ltr, // or TextDirection.rtl,
                                child: Text(
                                  'VJ',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          // Loading is finished, trigger navigation
          cubit.goToNextScreen(context);

          // Return a placeholder widget while waiting for navigation
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

void main() {
  runApp(
    MaterialApp(home: SplashScreenC()), // use MaterialApp
  );
}