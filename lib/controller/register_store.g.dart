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

  final _$ocorrenciaAtom = Atom(name: '_RegisterStoreBase.ocorrencia');

  @override
  ObservableList<OcurrencyModel>? get ocorrencia {
    _$ocorrenciaAtom.reportRead();
    return super.ocorrencia;
  }

  @override
  set ocorrencia(ObservableList<OcurrencyModel>? value) {
    _$ocorrenciaAtom.reportWrite(value, super.ocorrencia, () {
      super.ocorrencia = value;
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
  dynamic getOcurrency() {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.getOcurrency');
    try {
      return super.getOcurrency();
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
tipoOcorrencia: ${tipoOcorrencia},
descricao: ${descricao},
latitude: ${latitude},
longitude: ${longitude},
formattedDate: ${formattedDate},
formattedTime: ${formattedTime},
ocurrencyModel: ${ocurrencyModel},
ocorrencia: ${ocorrencia}
    ''';
  }
}
