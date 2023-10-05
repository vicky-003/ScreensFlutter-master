import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'APIdataCall.dart';
import 'DropDownlist.dart';
import 'Favorites.dart';
import 'like.dart';

class ConstList extends StatefulWidget {
  _ConstList createState() => _ConstList();
}

class _ConstList extends State<ConstList> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  @override
  void initState() {
    super.initState();
    // Perform initialization tasks here
    // This method is called once when the widget is inserted into the widget tree
  }
  String dropdownvalue = '1';

  var items = ['1','2','3'];
  int Containercount = 0;

  void updateContainerCount(String value){
    switch (value) {
      case '1': Containercount = 1;
      break;
      case '2': Containercount = 2;
      break;
      case '3': Containercount = 3;
      break;
      default: Containercount = 0;
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: Text('Dropdown Container List',style: TextStyle(color: Colors.white)),
            // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu_outlined,color: Colors.white,)),
          backgroundColor: Colors.blue),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    accountName: Text('Vivek',style: TextStyle(fontSize: 18)),
                    accountEmail: Text('abc3@gmail.com'),
                    currentAccountPictureSize: Size.square(50),
                    margin: EdgeInsets.only(bottom: 2),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 165, 255, 137),
                      child: Text('a',style: TextStyle(fontSize: 30,color: Colors.black),),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('My Profile'),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text(' API '),
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => APIdata()));
                    Get.to(APIdata());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.workspace_premium),
                  title: const Text(' Dropd Checkbox '),
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => dropdlist()));
                    Get.to(dropdlist());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.video_label),
                  title: const Text(' Favorites '),
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => like()));
                    Get.to(like());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text(' Checkbox show '),
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Favorites()));
                    Get.to(Favorites());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('LogOut'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(12),
                  child: DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                            updateContainerCount(dropdownvalue);
                      });
                    },
                  ),
                ),
                for(int i=0; i< Containercount; i++)
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red)
                  ),
                  child: Text('Red border Container ${i + 1}'),
                ),

              ],
            ),
          ),
        )
    );
  }
}