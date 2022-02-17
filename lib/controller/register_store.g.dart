// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterStore on _RegisterStoreBase, Store {
  final _$denuncianteAtom = Atom(name: '_RegisterStoreBase.denunciante');

  @override
  String? get denunciante {
    _$denuncianteAtom.reportRead();
    return super.denunciante;
  }

  @override
  set denunciante(String? value) {
    _$denuncianteAtom.reportWrite(value, super.denunciante, () {
      super.denunciante = value;
    });
  }

  final _$ufAtom = Atom(name: '_RegisterStoreBase.uf');

  @override
  String? get uf {
    _$ufAtom.reportRead();
    return super.uf;
  }

  @override
  set uf(String? value) {
    _$ufAtom.reportWrite(value, super.uf, () {
      super.uf = value;
    });
  }

  final _$cidadeAtom = Atom(name: '_RegisterStoreBase.cidade');

  @override
  String? get cidade {
    _$cidadeAtom.reportRead();
    return super.cidade;
  }

  @override
  set cidade(String? value) {
    _$cidadeAtom.reportWrite(value, super.cidade, () {
      super.cidade = value;
    });
  }

  final _$cepAtom = Atom(name: '_RegisterStoreBase.cep');

  @override
  int? get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(int? value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  final _$ruaAtom = Atom(name: '_RegisterStoreBase.rua');

  @override
  String? get rua {
    _$ruaAtom.reportRead();
    return super.rua;
  }

  @override
  set rua(String? value) {
    _$ruaAtom.reportWrite(value, super.rua, () {
      super.rua = value;
    });
  }

  final _$bairroAtom = Atom(name: '_RegisterStoreBase.bairro');

  @override
  String? get bairro {
    _$bairroAtom.reportRead();
    return super.bairro;
  }

  @override
  set bairro(String? value) {
    _$bairroAtom.reportWrite(value, super.bairro, () {
      super.bairro = value;
    });
  }

  final _$tipoOcorrenciaAtom = Atom(name: '_RegisterStoreBase.tipoOcorrencia');

  @override
  String? get tipoOcorrencia {
    _$tipoOcorrenciaAtom.reportRead();
    return super.tipoOcorrencia;
  }

  @override
  set tipoOcorrencia(String? value) {
    _$tipoOcorrenciaAtom.reportWrite(value, super.tipoOcorrencia, () {
      super.tipoOcorrencia = value;
    });
  }

  final _$descricaoAtom = Atom(name: '_RegisterStoreBase.descricao');

  @override
  String? get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String? value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$latitudeAtom = Atom(name: '_RegisterStoreBase.latitude');

  @override
  double? get latitude {
    _$latitudeAtom.reportRead();
    return super.latitude;
  }

  @override
  set latitude(double? value) {
    _$latitudeAtom.reportWrite(value, super.latitude, () {
      super.latitude = value;
    });
  }

  final _$longitudeAtom = Atom(name: '_RegisterStoreBase.longitude');

  @override
  double? get longitude {
    _$longitudeAtom.reportRead();
    return super.longitude;
  }

  @override
  set longitude(double? value) {
    _$longitudeAtom.reportWrite(value, super.longitude, () {
      super.longitude = value;
    });
  }

  final _$formattedDateAtom = Atom(name: '_RegisterStoreBase.formattedDate');

  @override
  String get formattedDate {
    _$formattedDateAtom.reportRead();
    return super.formattedDate;
  }

  @override
  set formattedDate(String value) {
    _$formattedDateAtom.reportWrite(value, super.formattedDate, () {
      super.formattedDate = value;
    });
  }

  final _$formattedTimeAtom = Atom(name: '_RegisterStoreBase.formattedTime');

  @override
  String get formattedTime {
    _$formattedTimeAtom.reportRead();
    return super.formattedTime;
  }

  @override
  set formattedTime(String value) {
    _$formattedTimeAtom.reportWrite(value, super.formattedTime, () {
      super.formattedTime = value;
    });
  }

  final _$ocurrencyModelAtom = Atom(name: '_RegisterStoreBase.ocurrencyModel');

  @override
  OcurrencyModel get ocurrencyModel {
    _$ocurrencyModelAtom.reportRead();
    return super.ocurrencyModel;
  }

  @override
  set ocurrencyModel(OcurrencyModel value) {
    _$ocurrencyModelAtom.reportWrite(value, super.ocurrencyModel, () {
      super.ocurrencyModel = value;
    });
  }

  final _$databaseAtom = Atom(name: '_RegisterStoreBase.database');

  @override
  Database get database {
    _$databaseAtom.reportRead();
    return super.database;
  }

  @override
  set database(Database value) {
    _$databaseAtom.reportWrite(value, super.database, () {
      super.database = value;
    });
  }

  final _$getPositionAsyncAction =
      AsyncAction('_RegisterStoreBase.getPosition');

  @override
  Future getPosition() {
    return _$getPositionAsyncAction.run(() => super.getPosition());
  }

  final _$_RegisterStoreBaseActionController =
      ActionController(name: '_RegisterStoreBase');

  @override
  void setDenunciante(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.setDenunciante');
    try {
      return super.setDenunciante(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUf(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.setUf');
    try {
      return super.setUf(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCidade(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.setCidade');
    try {
      return super.setCidade(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCep(int value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.setCep');
    try {
      return super.setCep(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRua(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.setRua');
    try {
      return super.setRua(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBairro(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.setBairro');
    try {
      return super.setBairro(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTipoOcorrencia(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.setTipoOcorrencia');
    try {
      return super.setTipoOcorrencia(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescricao(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.setDescricao');
    try {
      return super.setDescricao(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addOccurrence() {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.addOccurrence');
    try {
      return super.addOccurrence();
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
denunciante: ${denunciante},
uf: ${uf},
cidade: ${cidade},
cep: ${cep},
rua: ${rua},
bairro: ${bairro},
tipoOcorrencia: ${tipoOcorrencia},
descricao: ${descricao},
latitude: ${latitude},
longitude: ${longitude},
formattedDate: ${formattedDate},
formattedTime: ${formattedTime},
ocurrencyModel: ${ocurrencyModel},
database: ${database}
    ''';
  }
}
