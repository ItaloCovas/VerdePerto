import 'package:flutter/material.dart';
import 'package:verde_perto/pages/home_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:verde_perto/pages/register_page.dart';

class RegisterDetailsPage extends StatefulWidget {
  const RegisterDetailsPage({Key? key}) : super(key: key);

  @override
  _RegisterDetailsPageState createState() => _RegisterDetailsPageState();
}

class _RegisterDetailsPageState extends State<RegisterDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/verde8.png',
                    width: 95,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomePage();
                        }));
                      },
                      icon: const Icon(
                        Icons.close_rounded,
                        size: 30,
                      ))
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
                    'Ocorrência #1',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Categoria:',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Incêndio/Queimadas',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset('assets/images/queimada.png'),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Número da ocorrência:',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Flexible(
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
                          '-15.742062189730785, -47.76337011967098',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Cidade:',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Belo Horizonte',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Estado: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Minas Gerais',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Cidade:',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Belo Horizonte',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Data:',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '07.02.2022',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Hora:',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '10:34',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
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
                          'Queimada em área urbana, ocasionada por rompimento de cabo elétrico da companhia enérgetica...',
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
