import 'package:flutter/material.dart';
import 'package:meus_habitos/pages/login_page.dart';
import 'package:meus_habitos/pages/home_page.dart';
import 'package:meus_habitos/pages/create_routine_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/login': (context) => LoginPage(),
  '/home': (context) => HomePage(),
  '/createRoutine': (context) => CreateRoutinePage(),
};
