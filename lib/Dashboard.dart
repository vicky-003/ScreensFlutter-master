
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  String name = '';
  String pass = '';
  Dashboard(this.name, this.pass);

  @override
  State<Dashboard> createState() => _DashboardState(this.name, this.pass);
}

class _DashboardState extends State<Dashboard> {
  String name = ''; String pass = '';
  _DashboardState(this.name, this.pass);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Text("${name.toString()}",),
                Text("${pass.toString()}",)
              ],
            ),
          ),
        ],
      ),
    );
  }
}






