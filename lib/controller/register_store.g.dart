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

  final _$coordenadasAtom = Atom(name: '_RegisterStoreBase.coordenadas');

  @override
  String? get coordenadas {
    _$coordenadasAtom.reportRead();
    return super.coordenadas;
  }

  @override
  set coordenadas(String? value) {
    _$coordenadasAtom.reportWrite(value, super.coordenadas, () {
      super.coordenadas = value;
    });
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
  void setCoordenadas(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.setCoordenadas');
    try {
      return super.setCoordenadas(value);
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
coordenadas: ${coordenadas}
    ''';
  }
}
