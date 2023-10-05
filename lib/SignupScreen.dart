import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Dashboard.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: IconButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            icon: Icon(Icons.arrow_back,size: 35,color: Colors.indigo,))
                      )
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text('Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                )),
              SizedBox(height: 20),
              Center(child: Image.asset("assets/images/signup.PNG")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              TextField(
                controller: name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Password',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              TextField(
                controller: pass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Confirm Password',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              TextField(
                controller: pass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: Colors.blue,
                      minimumSize: Size(380, 65),
                      maximumSize: Size(500, 90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dashboard(name.text,pass.text)));
                    },
                    child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 22))
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}



