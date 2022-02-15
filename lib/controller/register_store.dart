import 'package:mobx/mobx.dart';
part 'register_store.g.dart';

class RegisterStore = _RegisterStoreBase with _$RegisterStore;

abstract class _RegisterStoreBase with Store {
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
  String? tipoOcorrencia;

  @action
  void setTipoOcorrencia(String value) => tipoOcorrencia = value;

  @observable
  String? descricao;

  @action
  void setDescricao(String value) => descricao = value;
}
