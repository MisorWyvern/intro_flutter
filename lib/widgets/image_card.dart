import 'package:flutter/material.dart';
import 'package:intro_flutter/models/receita.dart';
import 'package:intro_flutter/pages/detalhes.dart';

class ImageCard extends StatelessWidget {
  final String label;
  final String imageAsset;
  final Receita receita;

  const ImageCard({Key key, this.label, this.imageAsset, this.receita})
      : super(key: key);

  final double _cardSize = 238;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detalhes(receita: receita)));
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: EdgeInsets.symmetric(vertical: 8),
        child: SizedBox(
          height: _cardSize,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    imageAsset,
                    fit: BoxFit.fill,
                    height: _cardSize,
                  ),
                  Container(
                    height: _cardSize,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.deepOrange.withOpacity(0.6),
                          ]),
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 10,
                      child: Stack(
                        children: [
                          Text(
                            label,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = Colors.black,
                            ),
                          ),
                          Text(
                            label,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
