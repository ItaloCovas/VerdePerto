import 'package:flutter/material.dart';
import 'package:verde_perto/theme/theme.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? dropdown;
  @override
  void initState() {
    dropdown = estados[0];
  }

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
              Row(children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 70,
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Faça a sua ocorrência',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Denunciante (caso queira anonimato, não preecher):'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
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
                    SizedBox(
                      height: 15,
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.only(left: 8),
                            height: 40,
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
                                  hintText: 'Informe seu nome...',
                                  fillColor: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
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
                            child: Expanded(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdown,
                                  borderRadius: BorderRadius.circular(10),
                                  icon: const Icon(
                                      Icons.arrow_drop_down_rounded,
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
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 5, child: Text('Tipo de ocorrência(*):')),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Flexible(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
