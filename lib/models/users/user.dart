import 'package:cloud_firestore/cloud_firestore.dart';

class UserLocal {
  String? id;
  String? name;
  String? email;
  String? redeSocial;
  String? password;
  String? cofirmPassword;
  UserLocal(
      {this.id, this.name, this.email, this.password, this.cofirmPassword});

  UserLocal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    cofirmPassword = json['cofirmPassword'];
  }

  //  Método utilizado para armazenar dados do documento
  // obtido no Firebase

  UserLocal.fromDocument(DocumentSnapshot doc) {
    id = doc.id;
    name = doc.get('name') as String;
    email = doc.get('email') as String;
    redeSocial = doc.get('redeSocial') as String;
  }

  // Método utilizado para converter as informações
  // para formato JSON, que é o formato reconhecido pelo Firebase

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'redeSocial': redeSocial,
    };
  }
}
