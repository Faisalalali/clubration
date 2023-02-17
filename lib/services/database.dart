import 'package:cloud_firestore/cloud_firestore.dart';

import '../modules/local_user.dart';
import 'firebase_collection.dart';

class DatabaseService {
  late String uid;
  static DatabaseService? _instance;
  final FirebaseCollections collections = FirebaseCollections();

  static DatabaseService? get instance {
    _instance ??= DatabaseService();

    return _instance;
  }

  Future createUser({required LocalUser user}) async {
    return await collections.users.doc(user.uid).set(user.toMap(), SetOptions(merge: true));
  }
}
