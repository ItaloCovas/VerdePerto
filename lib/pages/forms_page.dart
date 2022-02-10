import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:verde_perto/controller/image_store.dart';

class FormsPage extends StatefulWidget {
  FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final imageStore = GetIt.I.get<ImageStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Observer(builder: (_) {
      return Column(
        children: [
          Observer(builder: (_) {
            if (imageStore.image != null) {
              return Image.file(
                imageStore.image!,
                width: 250,
                height: 250,
              );
            } else {
              return Center(
                child: Text('Não há imagem'),
              );
            }
          })
        ],
      );
    }));
  }
}
