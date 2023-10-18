import 'package:arquitetura_rota/telas/tela_login.dart';
import 'package:arquitetura_rota/telas/tela_principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: TelaLogin()),
      routes: {
        '/home': (context) => TelaPrincipal(),
        '/login': (context) => const TelaLogin(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
