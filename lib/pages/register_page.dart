import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:verde_perto/api/cep_api.dart';
import 'package:verde_perto/controller/cep_store.dart';
import 'package:verde_perto/controller/image_store.dart';
import 'package:verde_perto/pages/finished_page.dart';
import 'package:verde_perto/theme/theme.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final imageStore = GetIt.I.get<ImageStore>();
  final cepStore = GetIt.I.get<CepStore>();

  final controllerCidade = TextEditingController();
  final controllerEstado = TextEditingController();
  double? latitude;
  double? longitude;

  getPosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      latitude = position.latitude;
      longitude = position.longitude;
    });
  }

  static DateTime data = DateTime.now();
  String formattedDate = DateFormat("dd/MM/yyyy").format(data);
  String formattedTime = DateFormat.Hm().format(data);

  String? dropdown;
  @override
  void initState() {
    super.initState();
    getPosition();
    dropdown = estados[0];
    dropdown2 = ocorrencias[0];
  }

  String? dropdown2;

  List ocorrencias = [
    'Escolha...',
    'Carro Abandonado',
    'Maus-Tratos aos Animais',
    'Danos ao patrimônico público',
    'Descarte irregular lixo',
    'Desmatamento/Poda ilegal',
    'Destruição de morros',
    'Extração mineral ilegal',
    'Incêndio/Queimadas',
    'Pesca ilegal',
    'Poluição dos recuros hídricos',
    'Poluição dos solos',
  ];

  List estados = [
    'Informe seu estado...',
    'ES',
    'MG',
    'RJ',
    'SP',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: secondaryGray,
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
                padding: const EdgeInsets.only(left: 32, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Faça a sua ocorrência',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        'Denunciante (caso queira anonimato, não preecher):'),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const TextField(
                        cursorColor: primaryGreen,
                        style: TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 9, left: 3),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Informe seu nome...',
                            fillColor: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text('CEP:'),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Observer(builder: (_) {
                        return TextField(
                          keyboardType: TextInputType.number,
                          onSubmitted: (text) async {
                            cepStore.setCep(text);
                            await cepStore.getCepAction();
                            setState(() {
                              if (cepStore.cepModel != null) {
                                controllerCidade.text =
                                    cepStore.cepModel!.localidade.toString();
                              }
                              if (cepStore.cepModel != null) {
                                controllerCidade.text =
                                    cepStore.cepModel!.localidade.toString();
                              }
                            });
                          },
                          cursorColor: primaryGreen,
                          style: TextStyle(fontSize: 13),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: 9, left: 3),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: 'Informe seu CEP...',
                              fillColor: Colors.white),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Expanded(flex: 5, child: Text('Cidade:')),
                        Expanded(
                            flex: 5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text('UF:'),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: const EdgeInsets.only(left: 8),
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Observer(builder: (_) {
                              return TextField(
                                controller: controllerCidade,
                                cursorColor: primaryGreen,
                                style: TextStyle(fontSize: 13),
                                decoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(bottom: 9, left: 3),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: 'Informe seu nome...',
                                    fillColor: Colors.white),
                              );
                            }),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: const EdgeInsets.only(left: 8),
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: dropdown,
                                borderRadius: BorderRadius.circular(10),
                                icon: const Icon(Icons.arrow_drop_down_rounded,
                                    color: primaryGreen),
                                iconSize: 22,
                                elevation: 14,
                                style: const TextStyle(
                                    fontSize: 12, color: primaryGrey),
                                onChanged: (value) {
                                  setState(() {
                                    dropdown = value!;
                                  });
                                },
                                items: estados.map(
                                  (item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Expanded(
                            flex: 5, child: Text('Tipo de ocorrência(*):')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8),
                        height: 40,
                        width: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: dropdown2,
                            borderRadius: BorderRadius.circular(10),
                            icon: const Icon(Icons.arrow_drop_down_rounded,
                                color: primaryGreen),
                            iconSize: 22,
                            elevation: 14,
                            style: const TextStyle(
                                fontSize: 12, color: primaryGrey),
                            onChanged: (value) {
                              setState(() {
                                dropdown2 = value!;
                              });
                            },
                            items: ocorrencias.map(
                              (item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Expanded(
                            flex: 5, child: Text('Descrição da Ocorrência:')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 7),
                          height: 139,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const TextField(
                            cursorColor: primaryGreen,
                            style: TextStyle(fontSize: 13),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(bottom: 9, left: 3),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText:
                                    'Ex.: Queimada em parque da área urbana, ocasioanada por rompimento de cabo elétrico da companhia enérgetica...',
                                fillColor: Colors.white),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Expanded(
                          flex: 1,
                          child: Observer(builder: (_) {
                            return imageStore.image == null
                                ? const Text(
                                    'Não há nenhuma imagem selecionada')
                                : Image.file(imageStore.image!);
                          })),
                    ]),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Coordenadas: $latitude, $longitude',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Data: $formattedDate',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Hora: $formattedTime',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            height: 50.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FinishedPage()));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          primaryGreen),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ))),
                              child: Text(
                                "Enviar ocorrência".toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 25,
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
