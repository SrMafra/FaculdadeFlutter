import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_rounded,
          //size: 30,
        ),
        leadingWidth: 100,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(top: 20.0),
            child: const Column(
              children: <Widget>[
                Text(
                  textAlign: TextAlign.center,
                  'Faça seu login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Faça o login para continuar em nosso aplicativo',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color.fromARGB(156, 235, 235, 235),
            ),
            child: TextFormField(
              textAlign: TextAlign.left,
              decoration: const InputDecoration(
                hintText: 'Insira seu e-mail',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color.fromARGB(156, 235, 235, 235),
            ),
            child: TextFormField(
              textAlign: TextAlign.left,
              decoration: const InputDecoration(
                  hintText: '********',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.visibility_off_outlined)),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Esqueceu Sua Senha?',
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(top: 20.0),
            width: 400,
            height: 70,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Entrar',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
