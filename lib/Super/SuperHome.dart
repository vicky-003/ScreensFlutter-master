import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _home_screen createState() => _home_screen();
}

class _home_screen extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  List img = ['banner_01.png', 'banner_02.png', 'banner_03.png', 'download.jpeg', ];

  int selectedindex = 0 ;
  int assetstatus = 0 ;
  int _newstatus = 0 ;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < img.length; i++) {
      list.add((i == selectedindex) ? _indicator(true) : _indicator(false));
    }
    return list;
  }
  List<Widget> _Currencyrate() {
    List<Widget> list = [];
    for (int i = 0; i < 2; i++) {
      list.add((i == assetstatus) ? _indicator(true) : _indicator(false));
    }
    return list;
  }

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
          title: const Text("MSQUARE",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              )),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.qr_code_scanner_outlined,
                size: 30,
                color: Colors.grey,
              ),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.doorbell_outlined,
                size: 30,
                color: Colors.grey,
              ),
            ) //IconButton
          ],
          //<Widget>[]
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.design_services,
              size: 40,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 220,
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 4),
                child: Stack(
                    children: [PageView.builder(
                        controller: PageController(),
                        onPageChanged: (value) {
                          setState(() {
                            selectedindex = value;
                          });
                        },
                        itemCount: img.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              /*border: Border.all(color: Colors.grey)*/
                            ),
                            margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image(
                                  image: AssetImage('assets/poster/${img[index]}'),
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        height: 40,
                        child: Container(
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: _buildPageIndicator(),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                height: 380,
                child: PageView.builder(
                  controller: PageController(),
                  onPageChanged: (value) {
                    setState(() {
                      assetstatus = value;
                    });
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 0.5)),
                        // padding: EdgeInsets.all(25),
                        margin: EdgeInsets.all(25),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  "MSQUARE MSQ Asset Status",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                      fontSize: 13),
                                ),
                              ),
                              Container(
                                height: 0.5,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, right: 16),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blueAccent, width: 1.5),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Row(
                                          children: [
                                            Text(
                                              "MSQ, MSQX Market Cap",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Icon(
                                              Icons.info_outline,
                                              color: Colors.grey,
                                              size: 15,
                                            )
                                          ],
                                        ),
                                        RichText(
                                            text: const TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: '20,220,936,853 ',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: 'KRW',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black45,
                                                        fontWeight: FontWeight.bold)),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Company-Held MSQ Market Cap',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    RichText(
                                        text: const TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '12,042,385,811 ',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                            TextSpan(
                                                text: 'KRW',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold)),
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Company-Held MSQ Quantity',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    RichText(
                                        text: const TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '4,201,634',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 16, left: 16, top: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'MSQ Current Price',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    RichText(
                                        text: const TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '2,866.12 ',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                            TextSpan(
                                                text: 'KRW',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold)),
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _Currencyrate(),
              ),
              SizedBox(height: 25,),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.5)),
                margin: const EdgeInsets.only(left: 35, right: 35),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),),
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                              text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Total Balance in ',
                                      style: TextStyle(color: Colors.grey)),
                                  TextSpan(
                                      text: 'KRW',
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ],
                              ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '₩ 0.000',
                                style:
                                TextStyle(color: Colors.black, fontSize: 17),
                              ),
                              Expanded(child: Container()),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.swap_horizontal_circle_outlined,
                                    size: 35,
                                  ))
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.grey,
                                  )),
                              Text(
                                '0.00',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.5)),
                /*padding: EdgeInsets.only(left: 16, right: 16, top: 16),*/
                margin: EdgeInsets.only(right: 35, left: 35),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),),
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'P2P Trading',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Trade your digital assets',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Expanded(child: Container()),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    size: 25,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 35, right: 35),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'News',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: Container()),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(left: 12),
                            child: Padding(padding: EdgeInsets.only(top: 160,bottom: 160),
                              child: IconButton(onPressed: (){
                                if(_newstatus > 0) {
                                  setState(() {
                                    _newstatus--;
                                  });
                                }
                              },
                                  icon: Icon(Icons.arrow_back_ios_new)),
                            )
                        ),
                        /* Expanded(child: Container()),*/
                        Expanded(
                          child: Container(
                            height: 410,
                            padding: EdgeInsets.all(12),
                            child: PageView.builder(
                                controller: PageController(),
                                onPageChanged: (value) {
                                  _newstatus =  value;
                                },
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border:
                                          Border.all(color: Colors.grey, width: 0.5)),
                                      margin: EdgeInsets.only(left: 40, right: 40,top: 18),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                            ),
                                            padding: const EdgeInsets.all(16),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  '2023-07-21',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,),
                                                ),
                                                Expanded(child: Container()),
                                                const Text(
                                                    '1/20'
                                                )
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Center(
                                              child: Text(
                                                'MSQUARE MARKET은 자산관리, 이체 등 다양한 기능을 갖춘 서비스를 제공합니다.',
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 10, right: 10, top: 45, bottom: 10),
                                            child: Card(
                                              child: Center(
                                                child: Image(
                                                  image: AssetImage('assets/poster/banner_01.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 16),
                                            child: Center(
                                              child: Text(
                                                'Learn More',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color:Colors.indigo,
                                                ),),
                                            ),
                                          ),

                                        ],
                                      ));
                                }),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(right: 12),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 160,bottom: 160),
                            child: IconButton(onPressed: (){
                              if(_newstatus < 19) {
                                setState(() {
                                  _newstatus++;
                                });
                              }
                            },
                                icon: Icon(Icons.arrow_forward_ios)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 35, right: 35, bottom: 21),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tokens',
                          style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.5)),
                margin: EdgeInsets.only(right: 35, left: 35, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.monetization_on_outlined),
                                iconSize: 50,
                                color: CupertinoColors.systemYellow,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15,),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'vivek testing token 1',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 15,left: 70),
                                      child: Text('844,112'),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 90, top: 8),
                                      child: Text(
                                        '₩ 0.00',
                                        style: TextStyle(
                                            color: Colors.grey,fontSize: 10
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 90, top: 8,),
                                      child: Text(
                                        '₩ 0.0',
                                        style: TextStyle(
                                            color: Colors.grey,fontSize: 10
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.5)),
                margin: EdgeInsets.only(right: 35, left: 35, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.album_sharp),
                                iconSize: 50,
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'P2UPB',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 15,left: 160),
                                      child: Text('844,112'),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 90, top: 8),
                                      child: Text(
                                        '₩ 0.00',
                                        style: TextStyle(
                                            color: Colors.grey,fontSize: 10
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 90, top: 8,),
                                      child: Text(
                                        '₩ 0.0',
                                        style: TextStyle(
                                            color: Colors.grey,fontSize: 10
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: isActive ? 10 : 8.0,
      width: isActive ? 12 : 8.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.blue : Colors.black26,
      ),
    );
  }

}