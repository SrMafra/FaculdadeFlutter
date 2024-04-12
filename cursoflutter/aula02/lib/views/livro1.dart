import 'package:flutter/cupertino.dart';
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
                ),
              ),
              Tab(
                icon: Icon(Icons.description, color: Colors.white),
              ),
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
                              'Manual DevOps',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25.0),
                            ),
                            leading: const Icon(
                              Icons.book_online,
                              color: Colors.green,
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.star),
                              color:
                                  isFavorite ? Colors.yellow[500] : Colors.grey,
                              onPressed: () {
                                setState(
                                  () {
                                    isFavorite = !isFavorite; // state
                                  },
                                );
                              },
                            ),
                            subtitle: const Text(
                                'Como Obter Agilidade, Confiabilidade e Segurança em Organizações Tecnológicas',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                'assets/livro1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et ultricies quam. In mollis consequat magna in dapibus. Maecenas auctor vel nunc ac blandit. Duis egestas justo ac diam cursus rhoncus. Pellentesque non lorem dapibus, dignissim sem sit amet, ultricies nibh. Nam ultrices orci sit amet odio porttitor ultricies. Donec blandit congue ante, nec ultricies sapien. Etiam id arcu leo. Vestibulum suscipit nisl ut turpis venenatis, fringilla semper sem finibus. Cras ultrices nunc ut lorem scelerisque congue. Quisque varius efficitur quam, et ullamcorper nibh viverra id. Suspendisse in dui luctus, pretium elit id, gravida enim. Aliquam sed pretium urna, vel ultrices enim. Proin venenatis, nunc ut gravida egestas, ante mi faucibus ligula, ac finibus dui sem id sapien. Sed eleifend sed lectus nec ultricies.',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                //detalhes
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Descrição do Livro',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25.0),
                            ),
                            leading: Icon(
                              Icons.book_online,
                              color: Colors.green,
                            ),
                            subtitle: Text(
                              'Manual DevOps',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/genekim.jpg'),
                              radius: 40.0,
                            ),
                            title: Text(
                              'Sobre o Autor',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Gene Kim',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15.0),
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                'Gene Kim is a multiple award-winning CTO, researcher and author, and has been studying high-performing technology organizations since 1999. He was founder and CTO of Tripwire for 13 years. He has written six books, including The Unicorn Project (2019), The Phoenix Project (2013), The DevOps Handbook (2016), the Shingo Publication Award winning Accelerate (2018), and The Visible Ops Handbook (2004-2006) series. Since 2014, he has been the founder and organizer of the DevOps Enterprise Summit, studying the technology transformations of large, complex organizations.\n\nIn 2007, ComputerWorld added Gene to the “40 Innovative IT People to Watch Under the Age of 40” list, and he was named a Computer Science Outstanding Alumnus by Purdue University for achievement and leadership in the profession.\n\nHe lives in Portland, OR, with his wife and family.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
