import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intro_flutter/models/receita.dart';
import 'package:intro_flutter/widgets/image_card.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text(title),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/receitas.json"),
            builder: (context, snapshot) {
              List<dynamic> receitas = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemCount: receitas != null ? receitas.length : 0,
                itemBuilder: (BuildContext context, int index) {
                  Receita receita = Receita.fromJson(receitas[index]);
                  return ImageCard(
                      label: receita.titulo, imageAsset: receita.foto, receita: receita,);
                },
              );
            },
          )),
    );
  }
}
