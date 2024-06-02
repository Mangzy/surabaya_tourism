import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surabaya_tourism/pages/splash_screen.dart';
import 'package:surabaya_tourism/routes/page_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Surabaya Tourism',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      getPages: PageRouteApp.pages,
    );
  }
}
