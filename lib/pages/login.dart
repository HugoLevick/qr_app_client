import 'package:flutter/material.dart';
import 'package:qr_access/components/button.dart';
import 'package:qr_access/pages/forgotpass.dart';
import 'package:qr_access/pages/registro.dart';

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
  const LoginForm({Key? key}) : super(key: key);

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
        const SizedBox(height: 30),
        // Usuario
        Row(
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 10,
              child: TextField(
                controller: usernameController,
                decoration:
                  const InputDecoration(
                    hintText: 'Username', 
                    hintStyle: TextStyle(color: Color.fromARGB(255, 178, 178, 178)),
                    contentPadding: EdgeInsets.all(10)
                  ),
              ),
            ),
            const Expanded(flex: 2, child: SizedBox()),
          ],
        ),

        // Espacio
        const SizedBox(height: 30),

        // Contraseña
        Row(
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 10,
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration:
                  const InputDecoration(
                    hintText: 'Contraseña', 
                    hintStyle: TextStyle(color: Color.fromARGB(255, 178, 178, 178)),
                    contentPadding: EdgeInsets.all(10)
                  ),
              ),
            ),
            const Expanded(flex: 2, child: SizedBox()),
          ],
        ),

        // Espacio
        const SizedBox(height: 30),

        // Boton iniciar login
        Row(
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 10,
              child: PrimaryButton(
                onPressed: _handleLogin,
              ),
            ),
            const Expanded(flex: 2, child: SizedBox()),
          ],
        ),
        // Boton de contraseña olvidada y registro
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPassPage()),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF757575), // Define el color del texto
              ),
              child: const Text('¿Olvidaste tu contraseña?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistroPage()),
                );
              },
              child: const Text('Registrarse'),
            ),
          ],
        ),
      ],
    );
  }
}
