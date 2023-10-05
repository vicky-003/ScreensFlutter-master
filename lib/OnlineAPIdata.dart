import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class OnlineAPI extends StatefulWidget {
  _OnlineAPIdata createState() => _OnlineAPIdata();
}

class _OnlineAPIdata extends State<OnlineAPI> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  @override
  void initState() {
    super.initState();
    // Perform initialization tasks here
    // This method is called once when the widget is inserted into the widget tree
  }

  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('Rest API Data',style: TextStyle(color: Colors.white)),
          ),
          body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              final name = user['name']['first'];
              final email = user['email'];
              final imageUrl = user['picture']['thumbnail'];
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                    child: Image.network(imageUrl),
                ),
                title: Text(name),
                subtitle: Text(email),
              );
          },),
          floatingActionButton: FloatingActionButton(
            onPressed: fetchuser,
            backgroundColor: Colors.blue,
          ),
        )
    );
  }

  void fetchuser() async {
    print('fetchuser called');
    const url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response =  await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print('fetchuser completed');

  }
}