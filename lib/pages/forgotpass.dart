import 'package:flutter/material.dart';
import 'package:qr_access/components/button.dart';
import 'package:qr_access/pages/login.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Center(
        child: ForgotPassForm(),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final TextEditingController emailController = TextEditingController();

  void _handleLogin() {
    
    String email = emailController.text;

    // You can add your authentication logic here.
    // For a basic example, let's just print the entered credentials.
    print('Email: $email' );
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //Titulo
        Text(
          "SignUp",
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
                controller: emailController,
                decoration:
                  const InputDecoration(
                    hintText: ' Email', 
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
                onPressed: (){
                  _handleLogin();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ),
            const Expanded(flex: 2, child: SizedBox()),
          ],
        ),
        // Boton de contraseña olvidada y registro
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF757575), // Define el color del texto
              ),
              child: const Text('Back'),
            ),
          ],
        ),
      ],
    );
  }
}
