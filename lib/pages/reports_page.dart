import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:verde_perto/pages/home_page.dart';
import 'package:verde_perto/theme/theme.dart';

class ReportsPage extends StatefulWidget {
  ReportsPage({Key? key}) : super(key: key);

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  String dropdown = 'Todos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/verde8.png',
                      width: 95,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 35,
                  right: 35,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Consulta Pública de Ocorrências',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Consulte aqui as ocorrências já registradas por nossos usuários.',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Filtrar por:'),
                        SizedBox(
                          width: 15,
                        ),
                        DropdownButton<String>(
                          borderRadius: BorderRadius.circular(10),
                          value: dropdown,
                          icon: const Icon(Icons.keyboard_arrow_down,
                              color: Colors.grey),
                          iconSize: 24,
                          elevation: 14,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black),
                          onChanged: (String? value) {
                            setState(() {
                              dropdown = value!;
                            });
                          },
                          items: <String>[
                            'Todos',
                            'Mais recente',
                            'Menos recente'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (ctx, index) {
                            return Card(
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: primaryGrey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: ClipOval(
                                            child: Image.network(
                                              'https://th.bing.com/th/id/R.785dff7556ca090d9e863ffc555bbb56?rik=SjGFefW1wxIFFg&riu=http%3a%2f%2fwww.ambientelegal.com.br%2fwp-content%2fuploads%2famazonia41.jpg&ehk=P2XC5ja3GeA2Rw1QR9AJ3zSj1bkWrySaThzTf39s%2fmg%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Incêndio/Queimadas_BeloHorizonte',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          const TextSpan(
                              text: 'Quer registrar uma nova ocorrência?\n',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                          TextSpan(
                              text: 'Clique Aqui',
                              style: const TextStyle(
                                  color: primaryGreen,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomePage();
                                  }));
                                }),
                        ])),
                    SizedBox(
                      height: 45,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
