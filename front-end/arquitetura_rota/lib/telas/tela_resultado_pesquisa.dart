import 'package:arquitetura_rota/secoes/secao_menu.dart';
import 'package:arquitetura_rota/secoes/cabecalho.dart';
import 'package:arquitetura_rota/secoes/corpo_tela.dart';
import 'package:arquitetura_rota/extensoes.dart';
import 'package:flutter/material.dart';

class TelaResultadoPesquisa extends StatelessWidget {
  const TelaResultadoPesquisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: '#d9d9d9'.toColor()),
      child: Padding(
        padding: EdgeInsets.fromLTRB(36, 0, 36, 28),
        child: Column(
          children: [
            Cabecalho(),
            Expanded(
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Menu(
                      tela: "resultadopesquisa",
                    ),
                    CorpoTela(
                      "Pesquisar",
                      //SUBSTITUA A SIZEDBOX ABAIXO PELO CONTEUDO DO BLOCO BRANCO
                      filho: SizedBox(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
