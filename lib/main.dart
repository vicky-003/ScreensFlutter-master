import 'package:flutter/material.dart';
import 'P2PScreen/setting/app_route_service.dart';
import 'P2PScreen/setting/app_theme_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppThemeConfig.lightThemeData,
        initialRoute: '/',
        onGenerateRoute: AppRouteService.onGenerateRoute,
    );
  }
}




