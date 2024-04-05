import 'package:flutter/material.dart';

class Livro2Page extends StatefulWidget {
  const Livro2Page({super.key, required this.title});

  final String title;

  @override
  State<Livro2Page> createState() => _Livro2PageState();
}

class _Livro2PageState extends State<Livro2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text('Conteúdo da página do Livro 12'),
      ),
    );
  }
}
