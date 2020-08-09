import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ListagemTab extends StatefulWidget {
  @override
  _ListagemTabState createState() => _ListagemTabState();
}

class _ListagemTabState extends State<ListagemTab> {
  List _itens = [];

  @override
  void initState() {
    super.initState();
    _listar();
  }

  void _listar() async {
    _itens = [];
    Firestore db = Firestore.instance;
    await db.collection("pessoafisica").getDocuments().then((querySnapshot) {
      querySnapshot.documents.forEach((result) {
        setState(() {
          _itens.add(result.data);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, indice) {
              return ListTile (
                title: Text(_itens[indice]["nome"]),
                subtitle: Text(
                    _itens[indice]["email"] +"\n"+ _itens[indice]["cpf"]
                ),
              );
            }
        ),
      ),
    );
  }
}
