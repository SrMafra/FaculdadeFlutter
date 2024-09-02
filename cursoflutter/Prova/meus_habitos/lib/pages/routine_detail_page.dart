import 'package:flutter/material.dart';
import 'package:meus_habitos/models/routine_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class RoutineDetailPage extends StatefulWidget {
  final Routine routine;
  final int index;

  RoutineDetailPage({required this.routine, required this.index});

  @override
  _RoutineDetailPageState createState() => _RoutineDetailPageState();
}

class _RoutineDetailPageState extends State<RoutineDetailPage> {
  late Routine routine;

  @override
  void initState() {
    super.initState();
    routine = widget.routine;
  }

  Future<void> _toggleProgress(String date) async {
    setState(() {
      routine.progresso[date] = !(routine.progresso[date] ?? false);
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> rotinasData = prefs.getStringList('rotinas') ?? [];
    rotinasData[widget.index] = jsonEncode(routine.toMap());
    await prefs.setStringList('rotinas', rotinasData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(routine.objetivo)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Período: ${routine.dataInicio.toIso8601String().split('T')[0]} - ${routine.dataFim.toIso8601String().split('T')[0]}'),
            SizedBox(height: 16.0),
            Text('Descrição: ${routine.descricao}'),
            SizedBox(height: 16.0),
            Text('Anotação: ${routine.anotacao}'),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: routine.progresso.length,
                itemBuilder: (context, index) {
                  String date = routine.progresso.keys.elementAt(index);
                  return ListTile(
                    title: Text(date),
                    trailing: Checkbox(
                      value: routine.progresso[date] ?? false,
                      onChanged: (value) {
                        _toggleProgress(date);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
