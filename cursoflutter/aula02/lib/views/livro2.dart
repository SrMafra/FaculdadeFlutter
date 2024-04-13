import 'package:flutter/material.dart';

class Livro2Page extends StatefulWidget {
  const Livro2Page({super.key, required this.title});

  final String title;

  @override
  State<Livro2Page> createState() => _Livro2PageState();
}

class _Livro2PageState extends State<Livro2Page> {
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
                icon: Icon(Icons.menu_book, color: Colors.white),
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
                              'ChatGPT Explicado',
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
                                'Volume 1',
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
                                'assets/livro2.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                'Dominar ou não a inteligência artificial determinará se você pertencerá ao grupo altamente produtivo ou ao grupo facilmente substituível. Milhões de empregos desaparecerão à medida que as pessoas se tornam extraordinariamente mais produtivas, eliminando a necessidade de equipes inteiras para executar tarefas rotineiras.\nNeste livro, você encontrará uma análise detalhada dos benefícios e desafios do uso do ChatGPT, uma evolução da tecnologia GPT desenvolvida pela OpenAI, que tem revolucionado a maneira como nos comunicamos e interagimos com a inteligência artificial.\nAlém disso, o autor discute preocupações éticas e apresenta estratégias para se adaptar às mudanças no mercado de trabalho causadas pela automação e a IA.',
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
                              'ChatGPT Explicado',
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
                              backgroundImage: AssetImage('assets/helbercosta.jpg'),
                              radius: 40.0,
                            ),
                            title: Text(
                              'Sobre o Autor',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Helber Costa',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15.0),
                            ),
                          ),
                           Divider(),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                'Helbert Costa é referência brasileira na interface entre tecnologia e negócios. CMTO na Monte Bravo Investimentos, conselheiro da Play9 e ex-líder de Marketing e Tecnologia no \n\nComitê Olímpico do Brasil, seu impacto transcende fronteiras tecnológicas, moldando estratégias empresariais.\n\nSua formação acadêmica passa por lugares como Singularity \n\nUniversity e Fundação Dom Cabral. Ele combina conhecimento avançado em inteligência artificial com visão disruptiva, preparando empresas e profissionais para o futuro'),
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
