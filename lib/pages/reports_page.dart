import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:verde_perto/controller/register_store.dart';
import 'package:verde_perto/pages/register_page.dart';
import 'package:verde_perto/theme/theme.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  String dropdown = 'Todos';
  final registerStore = GetIt.I.get<RegisterStore>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    registerStore.getOccurrences();
  }

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
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Consulta Pública de Ocorrências',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Consulte aqui as ocorrências já registradas por nossos usuários.',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Filtrar por:'),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          height: 40,
                          decoration: BoxDecoration(
                            color: primaryGrey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              dropdownColor: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                              value: dropdown,
                              icon: const Icon(Icons.arrow_drop_down_rounded,
                                  color: primaryGreen),
                              iconSize: 30,
                              elevation: 0,
                              style: const TextStyle(
                                  fontSize: 13.5, color: Colors.black),
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
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Observer(builder: (_) {
                              return ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: const EdgeInsets.only(top: 10),
                                scrollDirection: Axis.vertical,
                                itemCount: registerStore.ocurrencies!.length,
                                itemBuilder: (ctx, index) {
                                  var occurrencies =
                                      registerStore.ocurrencies![0][index];
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Container(
                                      width: double.infinity,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: primaryGrey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: ClipOval(
                                                  child: Image.network(
                                                      occurrencies['image'],
                                                      width: 50,
                                                      height: 50,
                                                      fit: BoxFit.fill),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 12,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  occurrencies[
                                                      'tipoOcorrencia'],
                                                  style: const TextStyle(
                                                      fontSize: 12),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
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
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const RegisterPage();
                                  }));
                                }),
                        ])),
                    const SizedBox(
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
