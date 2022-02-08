import 'package:flutter/material.dart';
import 'package:verde_perto/theme/theme.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      color: primaryGreen,
      child: Column(
        children: const [
          Text("Bem-vindo",
              style: TextStyle(
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
