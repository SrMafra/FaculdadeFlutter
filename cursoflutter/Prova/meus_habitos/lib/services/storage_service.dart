import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meus_habitos/models/routine_model.dart';

class StorageService {
  Future<void> saveRoutine(Routine routine) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> rotinas = prefs.getStringList('rotinas') ?? [];
    rotinas.add(jsonEncode(routine.toMap()));
    await prefs.setStringList('rotinas', rotinas);
  }

  Future<List<Routine>> loadRoutines() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> rotinas = prefs.getStringList('rotinas') ?? [];
    return rotinas
        .map((routine) => Routine.fromMap(jsonDecode(routine)))
        .toList();
  }

  Future<void> saveCredentials(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
  }

  Future<Map<String, String>> loadCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return {
      'email': prefs.getString('email') ?? '',
      'password': prefs.getString('password') ?? '',
    };
  }
}
