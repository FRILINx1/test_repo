import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen>{
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _loginController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _loginController.dispose();
    super.dispose();
  }

  void _handlesignup(){
    final email = _emailController.text;
    final password = _passwordController.text;
    final login = _loginController.text;
    if(email.isNotEmpty && password.isNotEmpty && login.isNotEmpty){
      print('do the logup');
    }
    else{
      print('do the error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Реєстрація"),
      ),
      body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[


              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),


              const SizedBox(height: 15),


              TextField(
                controller: _loginController,
                decoration: const InputDecoration(
                  labelText: 'Login',
                  border: OutlineInputBorder(),
                ),
              ),


              const SizedBox(height: 15),


              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                  obscureText: true
              ),


              const SizedBox(height: 15),


              ElevatedButton(
                  onPressed: _handlesignup,
                  child: Text("Підтвердити"))
            ],
          ),
        ),
      );
  }
}