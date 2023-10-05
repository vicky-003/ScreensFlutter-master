import 'package:flutter/material.dart';

class userguide extends StatefulWidget {
  _userguide createState() => _userguide();
}

class _userguide extends State<userguide> {
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
          appBar: AppBar(
            title:  Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Text('User Guide',
                style: TextStyle(color: Colors.black),
                /*style: TextStyle(color: Colors.black,fontFamily: "poppins-Regular"),*/
                /*style: GoogleFonts.lato(color: Colors.black),*/

              ),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined,color: Colors.black),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              /*padding: EdgeInsets.all(12),*/
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 23, horizontal: 24),
                    child:
                    Text('What is SUPER SAVE?',
                      style: TextStyle(
                          color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
                      ),),
                  ),
                  Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(top: 12),
                      child: Image(
                        image: AssetImage('assets/poster/download.jpeg'),
                        fit: BoxFit.contain,
                        width: 480,
                        alignment: Alignment.centerLeft,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 25,left: 28,right: 12),
                    child: Column(
                      children: [
                        Text('The account book aims to increase global users for the expansion of MSQUARE real economy platform ecosystem and thereby expand the fixed purchase tax MSQ and MSQX for actual Use.',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 10,),
                        Text('The account book aims to operate within the limit of 100% of the reserve requirement, and after calculationg and reflecting the value recognized by MSQUARE, the payment rate for account resale payment is set at a maximum of 20% higher than the value of MSQ at the time of application.',
                          style: TextStyle(color: Colors.grey),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 35,left: 40,right: 12),
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.indigo, width: 1.5),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(
                                  child: Text('1',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.indigo
                                    ),),
                                )
                            ),
                            SizedBox(width: 16,),
                            Expanded(
                              child: Text('SUPER SAVE Registration',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Container(
                                height: 40,
                                width: 1,
                                color: Colors.indigo,
                              ),
                            ),
                          ],
                        ),
                        /* SizedBox(height: 40,),*/
                        Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.indigo, width: 1.5),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(
                                  child: Text('2',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.indigo
                                    ),),
                                )
                            ),
                            SizedBox(width: 16,),
                            Expanded(
                              child: Text('Credit Sale Application',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Container(
                                height: 40,
                                width: 1,
                                color: Colors.indigo,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.indigo, width: 1.5),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(
                                  child: Text('3',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.indigo
                                    ),),
                                )
                            ),
                            SizedBox(width: 16,),
                            Expanded(
                              child: Text('Requested MSQ Within 10 Minutes\nTransfer to SUPER SAVE Wallet',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Container(
                                height: 40,
                                width: 1,
                                color: Colors.indigo,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.indigo, width: 1.5),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(
                                  child: Text('4',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.indigo
                                    ),),
                                )
                            ),
                            SizedBox(width: 16,),
                            Expanded(
                              child: Text('Enter Transmitted TXID Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Container(
                                height: 40,
                                width: 1,
                                color: Colors.indigo,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.indigo, width: 1.5),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(
                                  child: Text('5',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.indigo
                                    ),),
                                )
                            ),
                            SizedBox(width: 16,),
                            Expanded(
                              child: Text('Check Wallet Transfer Details\nAnd Final Approval Decision Proceedings',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40,bottom: 16),
                    child: Center(
                      child: ElevatedButton(onPressed: (){
                        showDialog(context: context,
                            builder:(context) => AlertDialog(
                              backgroundColor: Colors.white,
                              contentPadding: EdgeInsets.all(20),
                              actionsPadding: EdgeInsets.all(30),
                              content:  Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('You cannot terminate\nMSQUARE Wallet because you\nhave a Super Save\nregistration.',
                                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                ],
                              ),
                              actions: <Widget>[
                                Center(
                                  child: ElevatedButton(onPressed: (){
                                    Navigator.of(context).pop(true);
                                  },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12), // Adjust padding
                                        minimumSize: Size(150, 25),),
                                      child: Text('Withdrawal From Service',
                                        style: TextStyle(color: Colors.white),)),
                                )
                              ],
                            )
                        );
                      },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                               padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12), // Adjust padding
                              minimumSize: Size(150, 48)
                          ),
                          child: Text('Apply for SUPER SAVE',
                          style: TextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}