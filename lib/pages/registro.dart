import 'package:flutter/material.dart';
import 'package:qr_access/components/button.dart';
import 'package:qr_access/pages/login.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Center(
        child: RegistroForm(),
      ),
    );
  }
}

class RegistroForm extends StatefulWidget {
  const RegistroForm({Key? key}) : super(key: key);

  @override
  State<RegistroForm> createState() => _RegistroFormState();
}

class _RegistroFormState extends State<RegistroForm> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  void _handleLogin() {
    String username = usernameController.text;
    String password = passwordController.text;
    String email = emailController.text;
    String lastname = lastnameController.text;
    String confirmpassword = confirmpasswordController.text;

    // You can add your authentication logic here.
    // For a basic example, let's just print the entered credentials.
    print('Username: $username $lastname, Email: $email, Password: $password');
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
                controller: usernameController,
                decoration:
                  const InputDecoration(
                    hintText: 'Name', 
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

        // Apellido
        Row(
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 10,
              child: TextField(
                controller: lastnameController,
                decoration:
                  const InputDecoration(
                    hintText: 'Last Name', 
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

        // Correo
        Row(
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 10,
              child: TextField(
                controller: emailController,
                decoration:
                  const InputDecoration(
                    hintText: 'Email', 
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
                    hintText: 'Password', 
                    hintStyle: TextStyle(color: Color.fromARGB(255, 178, 178, 178)),
                    contentPadding: EdgeInsets.all(10)
                  ),
              ),
            ),
            const Expanded(flex: 2, child: SizedBox()),
          ],
        ),

        const SizedBox(height: 30),

        Row(
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 10,
              child: TextField(
                obscureText: true,
                controller: confirmpasswordController,
                decoration:
                  const InputDecoration(
                    hintText: 'Confirm Password', 
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
        const SizedBox(height: 20),
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
