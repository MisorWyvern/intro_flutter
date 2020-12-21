import 'package:flutter/material.dart';
import 'package:intro_flutter/models/receita.dart';
import 'package:intro_flutter/widgets/custom_subtitle.dart';
import 'package:intro_flutter/widgets/custom_title.dart';
import 'package:intro_flutter/widgets/labeled_icon.dart';

class Detalhes extends StatelessWidget {
  final Receita receita;

  const Detalhes({Key key, this.receita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(receita.foto),
          CustomTitle(receita.titulo),
          Row(children: [
            LabeledIcon(Icons.restaurant, "${receita.porcoes} porções"),
            LabeledIcon(Icons.timer, receita.tempoPreparo),
          ]),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                CustomSubtitle("Ingredientes"),
                Text(receita.ingredientes),
                CustomSubtitle("Modo de Preparo"),
                Text(receita.modoPreparo),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
