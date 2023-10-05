import 'dart:async';

import 'package:flutter/material.dart';

import 'Super/LoginRegisterIllustration.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  @override
  void initState() {
    super.initState();
   Timer(Duration(seconds: 5), ()=> Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (context) => SignUPRegisterIllustration()
       )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          body: SingleChildScrollView(
            child: Container(
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
                      Text(
                        'VJ',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,)),
                      SizedBox(height: 30),
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

        )
    );
  }
}