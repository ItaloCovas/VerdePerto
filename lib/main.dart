import 'package:flutter/material.dart';
import 'package:verde_perto/pages/finished_page.dart';
import 'package:verde_perto/pages/splashscreen_page.dart';
import 'package:verde_perto/widgets/navigation_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: NavigationHome(),
    );
  }
}
