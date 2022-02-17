import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:verde_perto/model/ocurrency_model.dart';

class Database {
  CollectionReference ocorrencias =
      FirebaseFirestore.instance.collection('ocorrencias');

  Future<void> addOccurrence(OcurrencyModel model) {
    // Call the user's CollectionReference to add a new user
    return ocorrencias
        .add(model.toJson())
        .then((value) => print("Occurrence Added"))
        .catchError((error) => print("Failed to add occurrence: $error"));
  }
}
