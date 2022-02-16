import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:verde_perto/model/ocurrency_model.dart';
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
  var ocurrencyModel = OcurrencyModel();

  @observable
  ObservableList<OcurrencyModel>? ocorrencia =
      ObservableList.of(<OcurrencyModel>[]);

  @action
  getOcurrency() {
    ocorrencia?.add(ocurrencyModel);
  }
}
