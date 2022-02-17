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
        .add({})
        .then((value) => print("Occurrence Added"))
        .catchError((error) => print("Failed to add occurrence: $error"));
  }
}
