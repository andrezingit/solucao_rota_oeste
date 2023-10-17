import 'package:arquitetura_rota/telas/tela_login.dart';
import 'package:arquitetura_rota/telas/tela_ultimos_alertas.dart';
import 'package:arquitetura_rota/telas/tela_resultado_pesquisa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: TelaLogin()),
      debugShowCheckedModeBanner: false,
    );
  }
}
