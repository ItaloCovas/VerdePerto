import 'dart:io';

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
        children: [Image.file(imageStore.image as File)],
      );
    }));
  }
}
