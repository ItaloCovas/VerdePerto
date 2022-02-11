import 'package:flutter/material.dart';
import 'package:verde_perto/theme/theme.dart';
import 'package:verde_perto/widgets/navigation_home.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  int splashScreenTime = 1;

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
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Cabrito',
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(6, 6),
                          blurRadius: 7),
                    ])),
            const SizedBox(height: 10),
            const Text("ao",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(6, 6),
                        blurRadius: 7),
                  ],
                  color: Colors.white,
                  fontSize: 25,
                )),
            SimpleShadow(
              child: Image.asset(
                'assets/images/logo_splash.png',
                height: 300,
              ),
              opacity: 0.7, // Default: 0.5
              color: Colors.black, // Default: Black
              offset: Offset(6, 7), // Default: Offset(2, 2)
              sigma: 1.3,
            ),
            const SizedBox(height: 10),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
