import 'package:mobx/mobx.dart';
import 'package:verde_perto/api/cep_api.dart';
import 'package:verde_perto/model/cep_model.dart';
part 'cep_store.g.dart';

CepApi api = CepApi();

class CepStore = _CepStoreBase with _$CepStore;

abstract class _CepStoreBase with Store {
  @observable
  String? cep;

  @observable
  CepModel? cepModel;

  @action
  void setCep(String value) => cep = value;

  @action
  getCepAction() async {
    await api.getCep(cep).then((cepmodel) {
      cepModel = cepmodel;
    });
  }
}
