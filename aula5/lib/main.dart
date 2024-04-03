import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
            backgroundColor: Colors.deepOrange),
        scaffoldBackgroundColor: Colors.lime,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: null,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.abc,
                ),
                label: "Menu1"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.abc,
                ),
                label: "Menu2"),
          ],
        ),
      ),
    );
  }
}
