import 'package:flutter/material.dart';
import 'newpass.dart';
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordState();
}
class _ResetPasswordState extends State<ResetPasswordScreen> {
  final _emailController = TextEditingController();
  
  @override
  void disspose(){
    _emailController.dispose();
    super.dispose();
  }

  void _resetpassword() {
    final email = _emailController.text;
    if(email.isNotEmpty){
      print("reset");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Newpass(),
        ),
      );
    }
    else{
      print('введіть пошту');
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Зкидування паролю'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [

          
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),


          const SizedBox(height: 20),


          ElevatedButton(
              onPressed: _resetpassword,
              child: Text('Затвердити')),

        ],
       ),
      ),
    );
  }
}