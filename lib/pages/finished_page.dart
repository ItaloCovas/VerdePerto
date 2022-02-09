import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:verde_perto/pages/home_page.dart';
import 'package:verde_perto/theme/theme.dart';

class FinishedPage extends StatelessWidget {
  const FinishedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Text(
                    'Obrigado\n'
                    'Sua ocorrência foi registrada com sucesso',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/check.png',
                width: 200,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Número da Ocorrência: 1\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Consulte sua ocorrência na página de ',
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                TextSpan(
                    text: 'Consulta Pública',
                    style: TextStyle(color: primaryGreen, fontSize: 18),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      }),
              ]))
            ],
          ),
        )
      ],
    ));
  }
}
