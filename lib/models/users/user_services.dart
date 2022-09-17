import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:listcom/models/users/user.dart';

class UserServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  DocumentReference get firestoreRef =>
      _firestore.doc('users/${userLocal!.id}');
  UserLocal? userLocal;

  Future<void> signUp(UserLocal userLocal) async {
    User? user = (await _auth.createUserWithEmailAndPassword(
            email: userLocal.email!, password: userLocal.password!))
        .user;
    userLocal.id = user!.uid;
    this.userLocal = userLocal;
  }

  Future<void> saveData() async {
    await firestoreRef.set(userLocal!.toMap());
  }
}
