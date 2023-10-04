import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child:
          ClipRRect(borderRadius: BorderRadius.circular(16.0),
          child: Container(
            color: Colors.white,
            height: 400,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              // Logotipo da empresa (substitua pela sua imagem)
              Image.asset('asset/images/rota_logo.jpg'),

              SizedBox(height: 5.0),

              // Campo de email
              Container(
                width: 300.0, // Defina a largura desejada
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 20.0),

              // Campo de senha
              Container(
                width: 300.0, // Defina a largura desejada
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
              ),

              SizedBox(height: 20.0),

              // Botão de login
              ElevatedButton(
                onPressed: () {
                  // Implemente a lógica de autenticação aqui
                },
                child: Text('Entrar'),
              ),
            ]
            ),
          ),
        ),
      ),
    );
  }
}
