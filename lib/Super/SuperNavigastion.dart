import 'package:flutter/material.dart';

class Navigastion extends StatefulWidget {
  const Navigastion({super.key});

  @override
  Navigastionbar createState() => Navigastionbar();
}

class Navigastionbar extends State<Navigastion> {
  int selectedIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
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
            body:Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BottomNavigationBar(
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        currentIndex: selectedIndex,
                        type: BottomNavigationBarType.fixed,
                        items:  [

                          // Home Item
                          BottomNavigationBarItem(
                              label: 'home',
                              icon: Icon(Icons.home_outlined,)),

                          // Wallet Icon
                          BottomNavigationBarItem(
                              label: 'wallet',
                              icon: Icon(Icons.account_balance_wallet_outlined)),

                          // History Icon
                          BottomNavigationBarItem(
                              label: 'history',
                              icon: Icon(Icons.file_present_outlined)),

                          // Settings Icon

                          BottomNavigationBarItem(
                              label: 'setting',
                              icon: Icon(Icons.settings_outlined)),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)),
                            child: const Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.attractions_sharp,
                                size: 30,
                                color: Colors.indigo,
                              ),
                            )),
                      ),
                    ),
                  ),

                ]
            )
        )
    );

  }
}

/*
Container(
decoration: BoxDecoration(
border: Border.all(color: Colors.grey),
color: Colors.white,
borderRadius: BorderRadius.circular(40)),
child: const Padding(
padding: EdgeInsets.all(8),
child: Icon(
Icons.attractions_sharp,
size: 30,
color: Colors.indigo,
),
)),*/

/*
import 'package:flutter/material.dart';
import 'package:test_ui/home_screen.dart';
import 'package:test_ui/super_save.dart';


class Navigastion extends StatefulWidget {
  _Navigastion createState() => _Navigastion();
}

class _Navigastion extends State<Navigastion> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  int selectedIndex = 0;

  final pages = [
   home_screen(),
    super_save(),
  ];

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
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
          body: pages[selectedIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey),
              ),
            ),
            // BottomNavigationBar
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: onTabTapped,
              currentIndex: selectedIndex,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items:  [

                // Home Item
                BottomNavigationBarItem(
                  label: 'home',
                  icon: Icon(Icons.home_outlined,)),

                // Wallet Icon
                BottomNavigationBarItem(
                  label: 'wallet',
                    icon: Icon(Icons.account_balance_wallet_outlined)),



                // History Icon
                BottomNavigationBarItem(
                  label: 'history',
                    icon: Icon(Icons.file_present_outlined)),

                // Settings Icon

                BottomNavigationBarItem(
                  label: 'setting',
                    icon: Icon(Icons.settings_outlined)),
              ],
            ),
          ),
        )
    );
  }

}

*/