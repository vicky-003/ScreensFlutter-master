import 'package:flutter/material.dart';
import 'package:test_ui/SigninScreen.dart';

import '../SignupScreen.dart';


class SignUPRegisterIllustration extends StatefulWidget {
  _SignUPRegisterIllustration createState() => _SignUPRegisterIllustration();
}

class _SignUPRegisterIllustration extends State<SignUPRegisterIllustration> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  @override
  void initState() {
    super.initState();
    // Perform initialization tasks here
    // This method is called once when the widget is inserted into the widget tree
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset("assets/images/IIustration.jpg"),
                ),
                SizedBox(height: 20),
                Text('LOGIN TODAY',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 20),
                Text('Master Flutter and devloper your next project with ease! \n Start now by signing up or signing back in.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey,)),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUP()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              minimumSize: Size(150, 50)
                          ),
                          child: Text('Sign Up',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignIN()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              minimumSize: Size(150, 50)
                          ),
                          child: Text('Sign in',
                              style: TextStyle(color: Colors.white)),

                        ),
                      ),
                  ],
                ))

              ],
            ),
          ),
        )
    );
  }
}