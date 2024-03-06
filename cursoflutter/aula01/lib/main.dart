import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CIDADES DE RONDONIA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFavorite = false; // state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/cd/7c/8b/rio-ji-parana.jpg?w=700&h=-1&s=1',
              fit: BoxFit.cover,
              height: 280,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: const Text('Brasil',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      leading: const Icon(
                        Icons.location_city,
                        color: Colors.deepPurple,
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.star),
                        color: isFavorite ? Colors.yellow[600] : Colors.grey,
                        // altera
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite; // state
                          });
                        },
                      ),
                      subtitle: const Text('Ji-Paraná, Rondônia'),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: const ListTile(
                              leading: Icon(Icons.facebook,
                                  color: Colors.deepPurple),
                              contentPadding: EdgeInsets.all(8.0),
                              title: Text(
                                'Facebook',
                                softWrap: false,
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: const ListTile(
                              contentPadding: EdgeInsets.all(8.0),
                              leading:
                                  Icon(Icons.map, color: Colors.deepPurple),
                              title: Text('Endereço',
                                  style: TextStyle(fontSize: 15.0),
                                  softWrap: false),
                            ),
                          ),
                        ),
                        Flexible(
                          child: InkWell(
                            onTap: () {},
                            child: const ListTile(
                              contentPadding: EdgeInsets.all(8.0),
                              leading:
                                  Icon(Icons.share, color: Colors.deepPurple),
                              title: Text(
                                'Compartilhar',
                                style: TextStyle(fontSize: 15.0),
                                softWrap: false,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                          'Ji-Paraná é um município brasileiro do estado de Rondônia. Sua população, conforme estimativas do IBGE de 2021, era de 131.026 habitantes, sendo o segundo mais populoso do estado e o décimo sexto mais populoso da Região Norte do Brasil, a 226ª mais populosa do Brasil e a 113ª mais populosa cidade do interior brasileiro. ',
                          style: TextStyle(fontSize: 16.0)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
