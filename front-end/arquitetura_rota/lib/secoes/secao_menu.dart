import 'package:arquitetura_rota/componentes/botao_menu.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  //final String page;
  final String tela;

  const Menu({ required this.tela, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            width: 270,
            height: 58,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 17),
              child: Text(
                "Menu",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          MenuButton('Últimos Alertas', this.tela == "ultimosalertas" ? true : false),
        ],
      ),
    );
  }
}
