import 'package:flutter/material.dart';
import 'package:meus_habitos/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus Hábitos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login', // Rota inicial é a de login
      routes: appRoutes, // Definimos as rotas a partir de routes.dart
    );
  }
}
