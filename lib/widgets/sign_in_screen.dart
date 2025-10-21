import 'package:flutter/material.dart';
import './sign_up_screen.dart';
import './reset_pass_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}
class _SignInScreenState extends State<SignInScreen> {
  final _login = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _login.dispose();
    _password.dispose();
    super.dispose();
  }

  void _submitText() {
    if (_password.text.isNotEmpty && _login.text.isNotEmpty) {
      final pass = _password.text;
      final login = _login.text;
      print('Введений текст: $pass');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$login $pass'),

        ),
      );
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Введіть обидва поля'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вхід'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            TextField(
              controller: _login,
              decoration: const InputDecoration(
                labelText: 'Введіть логін',
                border: OutlineInputBorder(),
              ),
            ),


            const SizedBox(height: 20),


            TextField(
              controller: _password,
              decoration: const InputDecoration(
                labelText: 'Введіть пароль',
                border: OutlineInputBorder(),
              ),
                obscureText: true
            ),


            const SizedBox(height: 20),


            ElevatedButton(
              onPressed: _submitText,
              child: const Text('Затвердити'),
            ),


            const SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ),
                    );
                  },
                  child: const Text("Sign up"),
                ),


                const SizedBox(width: 10),


                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPasswordScreen(),
                      ),
                    );
                  },
                  child: const Text("Forgor the password"),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}