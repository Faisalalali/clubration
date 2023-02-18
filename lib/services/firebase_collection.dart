import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseCollections {
  static final _databaseRef = FirebaseFirestore.instance;
  final CollectionReference users = _databaseRef.collection('users');
  final CollectionReference clubs = _databaseRef.collection('clubs');
  final CollectionReference tasks = _databaseRef.collection('tasks');
}
