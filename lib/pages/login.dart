import 'package:flutter/material.dart';
import 'package:qr_access/components/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Center(
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _handleLogin() {
    String username = usernameController.text;
    String password = passwordController.text;

    // You can add your authentication logic here.
    // For a basic example, let's just print the entered credentials.
    print('Username: $username, Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //Titulo
        Text(
          "Iniciar Sesión",
          style: Theme.of(context).textTheme.titleLarge,
        ),

        // Usuario
        Row(
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 10,
              child: TextField(
                controller: usernameController,
                decoration:
                    const InputDecoration(contentPadding: EdgeInsets.all(10)),
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
          ],
        ),

        // Espacio
        const SizedBox(height: 50),

        // Contraseña
        Row(
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 10,
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration:
                    const InputDecoration(contentPadding: EdgeInsets.all(10)),
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
          ],
        ),

        // Espacio
        const SizedBox(height: 50),

        // Boton iniciar login
        Row(
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 10,
              child: PrimaryButton(
                onPressed: _handleLogin,
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
          ],
        ),
      ],
    );
  }
}
