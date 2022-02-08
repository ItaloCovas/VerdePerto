import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:verde_perto/pages/home_page.dart';
import 'package:verde_perto/widgets/navigation_home.dart';

=======
import 'package:verde_perto/pages/finished_page.dart';
>>>>>>> 7552b3a9df772f4040abc7c8b5425092ff07e001
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
      home: NavigationHome(),
=======
      home: const FinishedPage(),
>>>>>>> 7552b3a9df772f4040abc7c8b5425092ff07e001
    );
  }
}
