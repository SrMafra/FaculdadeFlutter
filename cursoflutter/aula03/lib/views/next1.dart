import 'package:flutter/material.dart';

class Next1Page extends StatefulWidget {
  const Next1Page({super.key});

  @override
  State<Next1Page> createState() => _Next1PageState();
}

class _Next1PageState extends State<Next1Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height / 2,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                child: Image.asset(
                  'assets/bg1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                  30.0), // Margem de 30 pixels em todas as direções
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Adiciona espaço flexível
                  const Text(
                    'A vida é curta e o ',
                    style: TextStyle(fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'mundo é',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      Text(
                        ' Vasto',
                        style: TextStyle(color: Colors.orange, fontSize: 25.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Explore novas possibilidades.\n'
                    'Descubra novas culturas.\n'
                    'Aproveite cada momento!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Ação do botão iniciar
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize:
                          const Size(400, 60), // Tamanho mínimo do botão
                    ),
                    child: const Text(
                      'Iniciar',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
