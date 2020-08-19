import 'package:flutter/material.dart';
import 'login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: Login(),
    theme: ThemeData(
      primaryColor: Color(0xff075E54),
      accentColor: Color(0xff25D366),
    ),
    debugShowCheckedModeBanner: false,
  ));


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

  /*
  //CRIA USUARIO
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseUser user;
  String email = "matheusscuzzi@gmail.com";
  String senha = "123456";
  auth.createUserWithEmailAndPassword(email: email, password: senha).then((user) {
    print("USUARIO: "+ user.user.email);
  }).catchError((erro){
    print("TÁ ERRADO ISSO AÍ FERA!!! "+erro.toString());
  });

  //LOGIN
  user = await auth.currentUser();
  if(user != null) {
    print("USUARIO LOGADO: "+ user.email);
  } else {
    print("USUARIO NAO LOGADO: "+ user.email);
  }

  //LOGOUT
  auth.signOut();
  */
}