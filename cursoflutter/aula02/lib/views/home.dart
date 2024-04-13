import 'package:flutter/material.dart';
import 'livro1.dart';
import 'livro2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // Navegar para a página do livro1.dart quando a imagem for clicada
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Livro1Page(
                          title: 'Biblioteca IFRO',
                        )),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 600, // Altura fixa para o Container
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/livro1.jpg', // Insira o caminho da imagem aqui
                      fit: BoxFit.contain, // Exibe a imagem em seu tamanho real
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ), // Espaçamento entre a imagem e o texto
                  const Text(
                    "Manual DevOps",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navegar para a página do livro2.dart quando a imagem for clicada
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const Livro2Page(title: 'Biblioteca IFRO')),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/livro2.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "ChatGPT Explicado",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
