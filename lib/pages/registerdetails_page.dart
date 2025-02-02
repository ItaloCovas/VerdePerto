import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:verde_perto/controller/register_store.dart';
import 'package:verde_perto/pages/home_page.dart';
import 'package:verde_perto/pages/reports_page.dart';
import 'package:verde_perto/widgets/navigation_home.dart';

class RegisterDetailsPage extends StatefulWidget {
  final int index;

  const RegisterDetailsPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  _RegisterDetailsPageState createState() => _RegisterDetailsPageState(index);
}

class _RegisterDetailsPageState extends State<RegisterDetailsPage> {
  final int index;

  _RegisterDetailsPageState(this.index);

  final registerStore = GetIt.I.get<RegisterStore>();

  @override
  void initState() {
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
                padding: const EdgeInsets.only(left: 32, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/verde8.png',
                      width: 95,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close_rounded,
                          size: 30,
                        ))
                  ],
                ),
              ),
              Observer(builder: (_) {
                if (registerStore.ocurrencies != null &&
                    registerStore.ocurrencies!.isNotEmpty) {
                  return Padding(
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
                          'Detalhes da ocorrência',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 22),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Categoria:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              registerStore.ocurrencies![index].tipoOcorrencia,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image.network(
                          registerStore.ocurrencies![index].image,
                          width: double.infinity,
                          height: 450,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'ID da ocorrência:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              flex: 5,
                              child: Text(
                                registerStore.ocurrencies![index].id.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Flexible(
                              flex: 5,
                              child: Text(
                                'Coordenadas:',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              flex: 6,
                              child: Text(
                                '${registerStore.ocurrencies![index].latitude}, ${registerStore.ocurrencies![index].longitude}'
                                    .toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Cidade:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              registerStore.ocurrencies![index].cidade,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Estado: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              registerStore.ocurrencies![index].uf,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Rua:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              registerStore.ocurrencies![index].rua,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Bairro:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              registerStore.ocurrencies![index].bairro,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Data:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              registerStore.ocurrencies![index].formattedDate,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Hora:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              registerStore.ocurrencies![index].formattedTime,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Descrição: ',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 6,
                              child: Text(
                                registerStore.ocurrencies![index].descricao,
                                style: TextStyle(fontSize: 14),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
