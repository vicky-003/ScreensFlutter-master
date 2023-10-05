import 'package:flutter/material.dart';

import 'SuperHome.dart';
import 'SupetUserguide.dart';


class Supersave extends StatefulWidget {
  _super_save createState() => _super_save();
}

class _super_save extends State<Supersave>
    with SingleTickerProviderStateMixin {
  bool iskrw = false;
  bool isPossi = false;

  var currence = 'KRW';

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: const Text("SUPERSAVE",
              style: TextStyle(color: Colors.white),)),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.comment,color: Colors.white),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ), //IconButton
            ],
            //<Widget>[]
            backgroundColor: Colors.blue,
            elevation: 2,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined,color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ), //AppBar
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 280,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: GestureDetector(
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: iskrw
                                          ? Colors.white
                                          : Colors.transparent,
                                      border: Border.all(color: Colors.black)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: RichText(
                                          text: TextSpan(
                                              text: 'KRW',
                                              style: TextStyle(
                                                color: iskrw
                                                    ? Colors.black
                                                    : Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '(default)',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.normal),
                                                )
                                              ]),
                                        ),
                                      )
                                    ],
                                  )),
                              onTap: () {
                                setState(() {
                                  iskrw = true;
                                  currence = 'KRW';
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: iskrw
                                        ? Colors.transparent
                                        : Colors.white,
                                    border: Border.all(color: Colors.black)),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'USDT',
                                  style: TextStyle(
                                      color:
                                      iskrw ? Colors.white : Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  iskrw = false;
                                  currence = 'USDT';
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              '2023-08-21 16:13',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                            Expanded(child: Container()),
                            Text(
                              'Refresh',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: const Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 102,
                        width: 420,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Reserves',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '10 billion $currence',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'My Remaining Balance',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(child: Container()),
                          Text('0 $currence'),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'My Daily Equal Payout',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(child: Container()),
                          Text('0 $currence'),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Credit Payment Rate',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(child: Container()),
                          Text('0.00%')
                        ],
                      ),
                      SizedBox(height: 12),
                      LinearProgressIndicator(
                        color: Colors.black12,
                      ),
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue)),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(child: Container()),
                            Text(
                              'See details',
                              style:
                              TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder:(context) => HomeScreen(),));
                              },
                              icon: Icon(Icons.arrow_forward),
                              color: Colors.blue,
                              iconSize: 26,
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 5, left: 25, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.event_note),
                              color: Colors.white,
                              iconSize: 26,
                            ),
                            Text(
                              'Apply for SUPER SAVE',
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Expanded(child: Container()),
                            Text(
                              '06:46:11',
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    constraints: BoxConstraints(maxHeight: 300),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                                    context: context, builder: (context){
                                  return Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 20,left: 20),
                                          child: Column(
                                            children: [
                                              Icon(Icons.remove,color: Colors.grey, size: 70),
                                              Text('Currency Selection',
                                                style: TextStyle(
                                                    color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(20),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(color: Colors.grey),
                                                ),
                                                padding: EdgeInsets.only(top: 30,left: 65,right: 65,bottom: 30),
                                                child: Column(
                                                  children: [
                                                    Icon(Icons.currency_exchange,color: Colors.black, size: 40),
                                                    SizedBox(height: 10,),
                                                    Text('KRW',style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                    ),)
                                                  ],
                                                ),
                                              ),
                                              Expanded(child: Container()),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(color: Colors.grey),
                                                ),
                                                padding: EdgeInsets.only(top: 30,left: 65,right: 65,bottom: 30),
                                                child: Column(
                                                  children: [
                                                    Icon(Icons.security_rounded,color: Colors.green, size: 40),
                                                    SizedBox(height: 10,),
                                                    Text('USDT',style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                    ),)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                });
                              },
                              icon: Icon(Icons.arrow_forward_ios),
                              color: Colors.white,
                              iconSize: 26,
                            ),
                          ],
                        ),
                      ],
                    )),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 15, left: 25, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.account_balance_wallet),
                              iconSize: 26,
                            ),
                            Text(
                              'SUPER SAVE Payment Details',
                              style: TextStyle(fontSize: 16),
                            ),
                            Expanded(child: Container()),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios),
                              iconSize: 26,
                            ),
                          ],
                        ),
                      ],
                    )),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 15, left: 25, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.speaker_outlined),
                              iconSize: 26,
                            ),
                            Text(
                              'SUPER SAVE User Guide',
                              style: TextStyle(fontSize: 16),
                            ),
                            Expanded(child: Container()),
                            IconButton(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder:(context) => userguide(),));
                              },
                              icon: Icon(Icons.arrow_forward_ios),
                              iconSize: 26,
                            ),
                          ],
                        ),
                      ],
                    )),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                              isPossi ? Colors.blue : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(16),
                            alignment: Alignment.center,
                            child: Text(
                              'Possible to Participate',
                              style: TextStyle(
                                  color: isPossi ? Colors.white : Colors.grey,
                                  fontSize: 16),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              isPossi = true;
                            });
                          },
                        ),
                        Expanded(child: Container()),
                        GestureDetector(
                          child: Container(
                            width: MediaQuery.of(context).size.width - 280,
                            decoration: BoxDecoration(
                              color:
                              isPossi ? Colors.transparent : Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(16),
                            alignment: Alignment.center,
                            child: Text(
                              'Participation',
                              style: TextStyle(
                                  color: isPossi ? Colors.grey : Colors.white,
                                  fontSize: 16),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              isPossi = false;
                            });
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                /*RefreshIndicator(
                  onRefresh: () async {
                    _handleRefresh();
                  },
                  child: AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: 1.0 + (_animation.value * 0.2),
                        child: child,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Pull to refresh',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),*/
              ],
            ),
          ) //Center
      ),
    );
  }
}