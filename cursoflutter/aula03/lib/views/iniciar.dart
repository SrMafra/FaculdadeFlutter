//import 'package:aula03/views/login.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class IniciarPage extends StatefulWidget {
  const IniciarPage({super.key});

  @override
  State<IniciarPage> createState() => _IniciarPageState();
}

class _IniciarPageState extends State<IniciarPage> {
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
            Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  actions: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          'A vida é curta e o ',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'mundo é',
                              style: TextStyle(fontSize: 25.0),
                            ),
                            Text(
                              ' Vasto',
                              style: TextStyle(
                                  color: Colors.orange, fontSize: 25.0),
                            ),
                          ],
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(
                          image: AssetImage('assets/vetor1.png'),
                        )
                        ],
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
    );
  }
}
