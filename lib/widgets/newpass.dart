import 'package:flutter/material.dart';

class Newpass extends StatefulWidget {
const Newpass({super.key});

  @override
  State<Newpass> createState() => _NewpassState();
}

class _NewpassState extends State<Newpass> {
  final _passContr = TextEditingController();
  final _confpassContr = TextEditingController();

  @override
  void dispose(){
  _passContr.dispose();
  _confpassContr.dispose();
  super.dispose();
  }

  void _submitpass(){
    final pass = _passContr.text;
    final confpass = _confpassContr.text;
    if(pass.isNotEmpty && confpass.isNotEmpty){
      if(pass == confpass){
        print('пароль змінено');
      }
      else{
        print('паролі різні');
      }
    }
    else{
      print('введіть пароль');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('зміна пароля')
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            TextField(
              controller: _passContr,
              decoration: const InputDecoration(
                labelText: 'Введіть парль',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: _confpassContr,
              decoration: const InputDecoration(
                labelText: 'підтвердіть пароль',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),
            
            ElevatedButton(onPressed:
            _submitpass,
                child: const Text('підтвердити')
            )

          ],
        ),
      ),
    );
  }
}