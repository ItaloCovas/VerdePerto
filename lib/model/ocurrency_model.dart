import 'dart:io';

class OcurrencyModel {
  String? denunciante;
  String? uf;
  String? cidade;
  String? rua;
  String? bairro;
  int? cep;
  int? id;
  String? image;
  String? tipoOcorrencia;
  String? descricao;
  double? latitude;
  double? longitude;
  String? formattedDate;
  String? formattedTime;

  OcurrencyModel(
      {this.denunciante,
      this.uf,
      this.cidade,
      this.rua,
      this.bairro,
      this.cep,
      this.id,
      this.image,
      this.tipoOcorrencia,
      this.descricao,
      this.latitude,
      this.longitude,
      this.formattedDate,
      this.formattedTime});

  OcurrencyModel.fromJson(Map<String, dynamic> json) {
    denunciante = json['denunciante'];
    uf = json['uf'];
    cidade = json['cidade'];
    rua = json['rua'];
    bairro = json['bairro'];
    cep = json['cep'];
    id = json['id'];
    image = json['image'];
    tipoOcorrencia = json['tipoOcorrencia'];
    descricao = json['descricao'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    formattedDate = json['formattedDate'];
    formattedTime = json['formattedTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['denunciante'] = denunciante;
    data['uf'] = uf;
    data['cidade'] = cidade;
    data['rua'] = rua;
    data['bairro'] = bairro;
    data['cep'] = cep;
    data['id'] = id;
    data['image'] = image;
    data['tipoOcorrencia'] = tipoOcorrencia;
    data['descricao'] = descricao;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['formattedDate'] = formattedDate;
    data['formattedTime'] = formattedTime;
    return data;
  }
}
