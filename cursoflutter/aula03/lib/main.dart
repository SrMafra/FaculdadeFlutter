import 'package:flutter/material.dart';
import 'package:aula03/views/login.dart';


void main() {
  runApp(
    const AgenciaDeViagens(),
  );
}

class AgenciaDeViagens extends StatelessWidget {
  const AgenciaDeViagens({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyLoginPage(),
    );
  }
}
