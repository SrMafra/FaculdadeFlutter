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
          //faca seu login
          Container(
            padding: const EdgeInsets.all(8.0),
            //margin: const EdgeInsets.only(top: 20.0),
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
          //form email
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
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
          //form senha
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color.fromARGB(156, 235, 235, 235),
            ),
            child: TextFormField(
              textAlign: TextAlign.left,
              decoration: const InputDecoration(
                  hintText: '*******',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.visibility_off_outlined)),
            ),
          ),
          const SizedBox(height: 10),
          //esqueceu a senha
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('Esqueceu a senha?'),
              ),
            ),
          ),
          //const Text('Esqueceu Sua Senha?'),
          const SizedBox(height: 20),
          //formbuttom
          Container(
            padding: const EdgeInsets.all(8.0),
            //margin: const EdgeInsets.symmetric(horizontal: 8.0),
            //margin: const EdgeInsets.only(top: 20.0),
            width: 355,
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
          //nao tem conta
          Container(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Não tem conta?'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Inscreva-se'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const Center(
            child: Text('Ou conecte'),
          ),
          const SizedBox(height: 10),
          //login rede social
          Container(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/facebook.png'),
                  iconSize: 70,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/instagram.png'),
                  iconSize: 70,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/twitter.png'),
                  iconSize: 70,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
