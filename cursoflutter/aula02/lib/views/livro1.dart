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
                              style: TextStyle(fontWeight: FontWeight.w500),
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
                                'Como Obter Agilidade, Confiabilidade e Segurança em Organizações Tecnológicas'),
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
                            subtitle: const Text('Livro 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/livro1.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
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
