import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Livro1Page extends StatefulWidget {
  const Livro1Page({super.key, required this.title});

  final String title;

  @override
  State<Livro1Page> createState() => _Livro1PageState();
}

class _Livro1PageState extends State<Livro1Page> {
  bool isFavorite = false; // state
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text(widget.title),
                bottom: const TabBar(tabs: [
                  Tab(
                      icon: Icon(
                    Icons.menu_book,
                    color: Colors.white,
                  )),
                  Tab(
                    icon: Icon(Icons.description, color: Colors.white),
                  )
                ]),
              ),
              body: TabBarView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: const Text(
                                  'Manual Deops',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                leading: const Icon(
                                  Icons.book_online,
                                  color: Colors.green,
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.star),
                                  color: isFavorite
                                      ? Colors.yellow[500]
                                      : Colors.grey,
                                  onPressed: () {
                                    setState(() {
                                      isFavorite = !isFavorite; // state
                                    });
                                  },
                                ),
                                subtitle: const Text('Como Obter Agilidade, Confiabilidade e Segurança em Organizações Tecnológicas'),
                              ),
                              const Divider(),
                              const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget justo mauris. Cras et libero id ipsum ullamcorper fermentum. Vivamus sit amet neque non tortor pharetra convallis.',
                          style: TextStyle(fontSize: 15.0)),
                    ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/livro1.jpg', // Substitua 'assets/sua_imagem.png' pelo caminho da sua imagem
                        width:
                            600, // Ajuste o tamanho da imagem conforme necessário
                        height:
                            600, // Ajuste o tamanho da imagem conforme necessário
                        fit: BoxFit
                            .contain, // Ajuste o modo de preenchimento da imagem conforme necessário
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: const Text(
                                  'Livro1',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                leading: const Icon(
                                  Icons.book_online,
                                  color: Colors.green,
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.star),
                                  color: isFavorite
                                      ? Colors.yellow[500]
                                      : Colors.grey,
                                  onPressed: () {
                                    setState(() {
                                      isFavorite = !isFavorite; // state
                                    });
                                  },
                                ),
                                subtitle: const Text('Livro 1'),
                                
                              ),
                              
                            ],
                            
                          ),
                          
                        ),
                      ),
                      Image.asset(
                        'assets/livro1.jpg', // Substitua 'assets/sua_imagem.png' pelo caminho da sua imagem
                        width:
                            200, // Ajuste o tamanho da imagem conforme necessário
                        height:
                            200, // Ajuste o tamanho da imagem conforme necessário
                        fit: BoxFit
                            .contain, // Ajuste o modo de preenchimento da imagem conforme necessário
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
