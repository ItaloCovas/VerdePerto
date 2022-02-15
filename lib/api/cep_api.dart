import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:verde_perto/controller/cep_store.dart';
import 'package:verde_perto/model/cep_model.dart';

class CepApi {
  Dio dio = Dio();

  Future<CepModel> getCep(cep) async {
    Response response;

    response = await dio.get('http://viacep.com.br/ws/${cep}/json/');
    print(response);

    CepModel cepModel = CepModel.fromJson(response.data);

    return cepModel;
  }
}
