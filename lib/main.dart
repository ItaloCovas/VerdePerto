import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:verde_perto/pages/home_page.dart';
import 'package:verde_perto/pages/navigation.dart';
=======
>>>>>>> e86f3af191069667dd47df42e101aaa53c2e1e1b
import 'package:verde_perto/pages/splashscreen_page.dart';

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
<<<<<<< HEAD
      home: Navigation(),
=======
      home: const SplashScreenPage(),
>>>>>>> e86f3af191069667dd47df42e101aaa53c2e1e1b
    );
  }
}
