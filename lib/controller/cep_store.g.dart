// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cep_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CepStore on _CepStoreBase, Store {
  final _$cepAtom = Atom(name: '_CepStoreBase.cep');

  @override
  String? get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String? value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  final _$cepModelAtom = Atom(name: '_CepStoreBase.cepModel');

  @override
  CepModel? get cepModel {
    _$cepModelAtom.reportRead();
    return super.cepModel;
  }

  @override
  set cepModel(CepModel? value) {
    _$cepModelAtom.reportWrite(value, super.cepModel, () {
      super.cepModel = value;
    });
  }

  final _$getCepActionAsyncAction = AsyncAction('_CepStoreBase.getCepAction');

  @override
  Future getCepAction() {
    return _$getCepActionAsyncAction.run(() => super.getCepAction());
  }

  final _$_CepStoreBaseActionController =
      ActionController(name: '_CepStoreBase');

  @override
  void setCep(String value) {
    final _$actionInfo = _$_CepStoreBaseActionController.startAction(
        name: '_CepStoreBase.setCep');
    try {
      return super.setCep(value);
    } finally {
      _$_CepStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cep: ${cep},
cepModel: ${cepModel}
    ''';
  }
}
