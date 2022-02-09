import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:verde_perto/controller/image_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 70,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Desenvolvido para cuidar do meio ambiente',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    children: [
                      const Flexible(
                        flex: 5,
                        child: Text(
                          "Um aplicativo pensado para ajudar seus usuários a exercerem seu papel como cidadão, através da publicização dos problemas ambientais vigentes no sudeste brasileiro!",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Flexible(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Image.asset(
                              'assets/images/image_1.png',
                              height: 210,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Quais tipos de ocorrências você pode fazer?',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Flexible(
                        child: Text(
                            '• Descarte irregular de lixo;\n'
                            '• Desmatamento/Poda Ilegal;\n'
                            '• Incêndios/Queimadas;\n'
                            '• Entre outros...\n',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ),
                    ],
                  ),
                  const Text(
                    'Como fazer sua ocorrência?',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Flexible(
                        child: Text(
                            'É simples! Basta apenas alguns cliques. O usuário deverá clicar no botão indicado com o símbolo de +  e tirar uma foto do local onde o problema ambiental se encontra. Logo após, deverá preencher um formulário (poderá ser de forma anônima) dando informações adicionais sobre a ocorrência. E está feito! Faremos com que sua ocorrência tenha o alcance devido, sendo analisada pela nossa equipe. Buscamos por soluções! ',
                            textAlign: TextAlign.justify,
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'Poppins')),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
