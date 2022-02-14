import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:verde_perto/controller/image_store.dart';
import 'package:verde_perto/theme/theme.dart';

class FormsPage extends StatefulWidget {
  FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final imageStore = GetIt.I.get<ImageStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: imageStore.image == null
            ? Text('Não há nenhuma imagem selecionada')
            : Image.file(imageStore.image!),
      ),
    );
  }
}
