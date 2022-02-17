import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:verde_perto/controller/register_store.dart';

class Database {
  final registerStore = GetIt.I.get<RegisterStore>();

  CollectionReference ocorrencias =
      FirebaseFirestore.instance.collection('ocorrencias');

  Future<void> addOccurrence() {
    // Call the user's CollectionReference to add a new user
    return ocorrencias
        .add({
          'bairro': registerStore.bairro,
          'cep': registerStore.cep,
          'cidade': registerStore.cidade,
          'denunciante': registerStore.denunciante,
          'descricao': registerStore.descricao,
          'formattedDate': registerStore.formattedDate,
          'formattedTime': registerStore.formattedTime,
          'latitude': registerStore.latitude,
          'longitude': registerStore.longitude,
          'rua': registerStore.rua,
          'tipoOcorrencia': registerStore.tipoOcorrencia,
          'uf': registerStore.uf,
        })
        .then((value) => print("Occurrence Added"))
        .catchError((error) => print("Failed to add occurrence: $error"));
  }
}
