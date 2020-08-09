import 'package:flutter/material.dart';
import 'home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  /*//CONTEUDO AULA FIREBASE
  WidgetsFlutterBinding.ensureInitialized();
  Firestore db = Firestore.instance;
  //insert
  db.collection("pessoafisica").add({
    "nome": "Matheus",
    "email": "matheus@mail.com",
    "cpf": "000.111.222-33",
    "senha": "123"
  });
  //update
  db.collection("pessoafisica").document("HASH").updateData({
    "nome": "Matheus ALT",
    "email": "matheusALT@mail.com",
    "cpf": "000.111.222-33",
    "senha": "123ALT"
  });
  //delete
  db.collection("peesoafisica").document("HASH").delete();
  //select
  DocumentSnapshot snapshot = await db.collection("pessoafisica").document("HASH").get();
  var dados = snapshot.data;
  print(dados["nome"] + dados["email"] + dados["cpf"] + dados["senha"]);*/

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: Home()));
}