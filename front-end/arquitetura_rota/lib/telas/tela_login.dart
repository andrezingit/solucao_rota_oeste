import 'package:arquitetura_rota/extensoes.dart';
import 'package:arquitetura_rota/services/autenticacao.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  TelaLoginState createState() => TelaLoginState();
}

class TelaLoginState extends State<TelaLogin> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authService = AuthService();

  Future<void> loginAndNavigate(BuildContext context) async {
    try {
      // Pegue os valores dos campos de "Email" e "Senha" e passe ao serviço
      String username = _usernameController.text; // Usando o campo de "Email"
      String password = _passwordController.text; // Usando o campo de "Senha"

      String token = await _authService.login(username, password);

      if (UniversalPlatform.isWeb) {
        // Navegar no modo web usando pushReplacement e Uri.base
        final newUri = Uri.parse(Uri.base.toString() + 'home');
        Navigator.pushReplacementNamed(context, newUri.toString());
      } else {
        // Navegar no modo aplicativo/desktop
        Navigator.pushReplacementNamed(context, '/home');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Falha no login')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#d9d9d9'.toColor(),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            color: Colors.white,
            height: 400,
            width: 400,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('asset/images/rota.png'),
                  SizedBox(height: 5.0),
                  Container(
                    width: 300.0,
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 300.0,
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        loginAndNavigate(context);
                      }
                    },
                    child: Text('Entrar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
