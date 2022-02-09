import 'package:flutter/material.dart';
import 'package:verde_perto/theme/theme.dart';
import 'package:verde_perto/widgets/navigation_home.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  int splashScreenTime = 4;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: splashScreenTime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return NavigationHome();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        height: height,
        width: width,
        color: primaryGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Bem-vindo",
                style: TextStyle(
                    color: Colors.white, fontSize: 40, fontFamily: 'Cabrito')),
            const SizedBox(height: 10),
            const Text("ao",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                )),
            Image.asset(
              'assets/images/logo_splash.png',
              height: 180,
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
