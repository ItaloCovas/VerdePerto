import 'package:flutter/material.dart';
import 'package:verde_perto/pages/registerdetails_page.dart';
import 'package:verde_perto/pages/reports_page.dart';
import 'package:verde_perto/theme/theme.dart';
import 'package:verde_perto/widgets/navigation_home.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  int splashScreenTime = 5;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: splashScreenTime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const RegisterDetailsPage();
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
            const Padding(
              padding: EdgeInsets.only(bottom: 60.0),
              child: Center(
                child: Text("Bem-vindo ao",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontFamily: 'Cabrito',
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/logo_splash.png',
              height: 290,
              alignment: Alignment.topCenter,
            ),
            const SizedBox(height: 120),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
