import 'package:flutter/material.dart';

class Livro1Page extends StatefulWidget {
  const Livro1Page({super.key, required this.title});

  final String title;

  @override
  State<Livro1Page> createState() => _Livro1PageState();
}

class _Livro1PageState extends State<Livro1Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
            bottom: const TabBar(
              tabs:[
                Tab(icon: Icon(Icons.menu_book)),
                Tab(icon: Icon(Icons.description),)
              ]
              ),
          ),
          body:  const TabBarView(
            children: <Widget>[
              Card(
                child:Column(
                  children: <Widget>
                  [ListTile(title: Text('Nome do Livro'),)],
                )
                ),
                Card(
                child:Column(
                  children: <Widget>
                  [ListTile(title: Text('Nome do Livro'),)],
                )
                ),
  
            ]
          ),
        ),
      ),
    );
  }
}
