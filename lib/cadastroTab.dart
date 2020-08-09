import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CadastroTab extends StatefulWidget {
  @override
  _CadastroTabState createState() => _CadastroTabState();
}

class _CadastroTabState extends State<CadastroTab> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerCPF = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  void _registrar() {
    if(!_controllerNome.text.isEmpty && !_controllerEmail.text.isEmpty && !_controllerCPF.text.isEmpty && !_controllerSenha.text.isEmpty) {
      Firestore db = Firestore.instance;
      //insert
      db.collection("pessoafisica").add({
        "nome": _controllerNome.text,
        "email": _controllerEmail.text,
        "cpf": _controllerCPF.text,
        "senha": _controllerSenha.text
      });
      _showToast(context, 'Registro salvo com sucesso');
    } else {
      _showToast(context, 'Preencha todos os campos');
    }
  }

  void _showToast(BuildContext context, String texto) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(texto),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Nome"),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                controller: _controllerNome,
              ),
              TextField(
                decoration: InputDecoration(labelText: "E-mail"),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                controller: _controllerEmail,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "CPF"),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                controller: _controllerCPF,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Senha"),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                controller: _controllerSenha,
                obscureText: true,
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white70,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Registrar",
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: _registrar,
              ),
            ],
          ),
        )
      ),
    );
  }
}
