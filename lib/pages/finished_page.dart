import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:verde_perto/controller/register_store.dart';
import 'package:verde_perto/theme/theme.dart';
import 'package:verde_perto/widgets/navigation_home.dart';

class FinishedPage extends StatefulWidget {
  final String id;
  FinishedPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<FinishedPage> createState() => _FinishedPageState();
}

class _FinishedPageState extends State<FinishedPage> {
  _FinishedPageState();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
            width: width,
            height: height,
            color: secondaryGray,
            child: Observer(builder: (_) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      child: const Text(
                        'OBRIGADO!\n\n'
                        'Sua ocorrência foi registrada com sucesso',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/check.png',
                    width: 140,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'ID do registro: ',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.id,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        const TextSpan(
                            text: 'Consulte sua ocorrência na página de\n',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        TextSpan(
                            text: 'Consulta Pública',
                            style: const TextStyle(
                                color: primaryGreen,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const NavigationHome();
                                }));
                              }),
                      ]))
                ],
              );
            })));
  }
}
