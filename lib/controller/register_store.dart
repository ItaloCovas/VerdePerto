import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:verde_perto/controller/image_store.dart';
import 'package:verde_perto/database/database.dart';
import 'package:verde_perto/model/ocurrency_model.dart';
part 'register_store.g.dart';

class RegisterStore = _RegisterStoreBase with _$RegisterStore;

abstract class _RegisterStoreBase with Store {
  var imageStore = GetIt.I.get<ImageStore>();

  @observable
  String? denunciante;

  @action
  void setDenunciante(String value) => denunciante = value;

  @observable
  String? uf;

  @action
  void setUf(String value) => uf = value;

  @observable
  String? cidade;

  @action
  void setCidade(String value) => cidade = value;

  @observable
  int? cep;

  @action
  void setCep(int value) => cep = value;

  @observable
  String? rua;

  @action
  void setRua(String value) => rua = value;

  @observable
  String? bairro;

  @action
  void setBairro(String value) => bairro = value;

  @observable
  String? tipoOcorrencia;

  @action
  void setTipoOcorrencia(String value) => tipoOcorrencia = value;

  @observable
  String? descricao;

  @action
  void setDescricao(String value) => descricao = value;

  @observable
  double? latitude;

  @observable
  double? longitude;

  @action
  getPosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    Position position = await Geolocator.getCurrentPosition();
    latitude = position.latitude;
    longitude = position.longitude;
  }

  static DateTime data = DateTime.now();

  @observable
  String formattedDate = DateFormat("dd/MM/yyyy").format(data);

  @observable
  String formattedTime = DateFormat.Hm().format(data);

  @observable
  var database = Database();

  @observable
  ObservableList? ocurrencies = ObservableList.of(<OcurrencyModel>[]);

  @action
  getOccurrences() async {
    QuerySnapshot collectionData =
        await FirebaseFirestore.instance.collection('ocorrencias').get();
    final data = collectionData.docs.map((doc) => doc.data()).toList();
    ocurrencies!.add(data);
    print(ocurrencies.runtimeType);
  }

  @action
  addOccurrence() async {
    final ref = FirebaseStorage.instance
        .ref()
        .child('occurrenceImages')
        .child(denunciante! + '.jpg');
    await ref.putFile(imageStore.image!);
    var url = await ref.getDownloadURL();
    OcurrencyModel newModel = OcurrencyModel(
      denunciante: denunciante,
      uf: uf,
      cidade: cidade,
      bairro: bairro,
      rua: rua,
      cep: cep,
      image: url,
      tipoOcorrencia: tipoOcorrencia,
      descricao: descricao,
      latitude: latitude,
      longitude: longitude,
      formattedDate: formattedDate,
      formattedTime: formattedTime,
    );
    database.addOccurrence(newModel);
  }
}
