import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {

  final String logoRotaOeste = 'asset/images/rota.png';
  final String iconeLupa = 'asset/images/icons8-lupa-50.png';

  const Cabecalho({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
        Container(
          height: 121,
          width: 171,
          child: Image(
            image: AssetImage(logoRotaOeste),
          ),
        ),
        Container(
          height: 30,
          width: 30,
          child: Image( image: AssetImage(iconeLupa),)
        )
      ]),
    );
  }
}