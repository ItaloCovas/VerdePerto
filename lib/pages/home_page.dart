import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

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
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(35, 10, 10, 20),
              child: Text(
                'Desenvolvido para cuidar do meio ambiente',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
            ),
            Row(
              children: [
                const Flexible(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(left: 35.0),
                      child: Text(
                        "Um aplicativo pensado para ajudar seus usuários a exercerem seu papel como cidadão, através da publicização dos problemas ambientais vigentes no sudeste brasileiro!",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14),
                      ),
                    )),
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
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(35, 10, 10, 20),
              child: Text('Quais tipos de ocorrências você pode fazer?',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22)),
            ),
            Row(
              children: const [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 35.0, right: 35.0),
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
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 10, 20),
              child: Text('Como fazer sua ocorrência?',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  )),
            ),
            Row(
              children: const [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 35.0),
                    child: Text(
                        'É simples! Basta apenas alguns cliques. O usuário deverá clicar no botão indicado com o símbolo de +  e tirar uma foto do local onde o problema ambiental se encontra. Logo após, deverá preencher um formulário (poderá ser de forma anônima) dando informações adicionais sobre a ocorrência. E está feito! Faremos com que sua ocorrência tenha o alcance devido, sendo analisada pela nossa equipe. Buscamos por soluções! ',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, letterSpacing: 4)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 45,
            )
          ],
        ),
      ),
    ));
  }
}
