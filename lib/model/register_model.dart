class RegisterModel {
  String? denunciante;
  String? uf;
  String? cidade;
  String? tipoOcorrencia;
  String? descricao;
  double? latitude;
  double? longitude;
  String? formattedDate;
  String? formattedTime;

  RegisterModel(
      {this.denunciante,
      this.uf,
      this.cidade,
      this.tipoOcorrencia,
      this.descricao,
      this.latitude,
      this.longitude,
      this.formattedDate,
      this.formattedTime});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    denunciante = json['denunciante'];
    uf = json['uf'];
    cidade = json['cidade'];
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
    data['tipoOcorrencia'] = tipoOcorrencia;
    data['descricao'] = descricao;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['formattedDate'] = formattedDate;
    data['formattedTime'] = formattedTime;
    return data;
  }
}
