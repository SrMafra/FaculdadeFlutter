import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meus_habitos/models/routine_model.dart';

class StorageService {
  // Salvar uma rotina na lista de rotinas
  Future<void> saveRoutine(Routine routine) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> rotinas = prefs.getStringList('rotinas') ?? [];

    rotinas.add(jsonEncode(routine.toMap()));
    await prefs.setStringList('rotinas', rotinas);
  }

  // Carregar todas as rotinas salvas
  Future<List<Routine>> loadRoutines() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> rotinas = prefs.getStringList('rotinas') ?? [];
    return rotinas
        .map((routine) => Routine.fromMap(jsonDecode(routine)))
        .toList();
  }

  // Salvar credenciais de login
  Future<void> saveCredentials(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
  }

  // Carregar credenciais de login
  Future<Map<String, String>> loadCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return {
      'email': prefs.getString('email') ?? '',
      'password': prefs.getString('password') ?? '',
    };
  }

  // Limpar credenciais de login (opcional)
  Future<void> clearCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
    await prefs.remove('password');
  }

  // Limpar todas as rotinas salvas (opcional)
  Future<void> clearRoutines() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('rotinas');
  }
}
