import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meus_habitos/models/routine_model.dart';
import 'dart:convert';

class CreateRoutinePage extends StatefulWidget {
  @override
  _CreateRoutinePageState createState() => _CreateRoutinePageState();
}

class _CreateRoutinePageState extends State<CreateRoutinePage> {
  String objetivo = '';
  String tarefaDescricao = '';
  TimeOfDay? horarioInicio;
  String anotacao = '';
  DateTime? dataInicio;
  DateTime? dataFim;

  Future<void> criarRotina() async {
    if (dataInicio == null || dataFim == null) {
      // Exibir uma mensagem de erro se as datas não forem selecionadas
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Por favor, selecione as datas de início e término.'),
      ));
      return;
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> rotinas = prefs.getStringList('rotinas') ?? [];

    Map<String, bool> progresso = {};

    // Inicializar o progresso com falso para cada dia do período
    DateTime current = dataInicio!;
    while (current.isBefore(dataFim!) || current.isAtSameMomentAs(dataFim!)) {
      progresso[current.toIso8601String().split('T')[0]] = false;
      current = current.add(Duration(days: 1));
    }

    Routine novaRotina = Routine(
      periodo: '',
      objetivo: objetivo,
      descricao: tarefaDescricao,
      horarioInicio: horarioInicio?.format(context) ?? 'Livre',
      anotacao: anotacao,
      dataInicio: dataInicio!,
      dataFim: dataFim!,
      progresso: progresso,
    );

    rotinas.add(jsonEncode(novaRotina.toMap()));
    await prefs.setStringList('rotinas', rotinas);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criar Nova Rotina')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => objetivo = value,
              decoration: InputDecoration(labelText: 'Objetivo'),
            ),
            TextField(
              onChanged: (value) => tarefaDescricao = value,
              decoration: InputDecoration(labelText: 'Descrição da Tarefa'),
            ),
            ListTile(
              title: Text(
                  'Horário de Início: ${horarioInicio?.format(context) ?? 'Livre'}'),
              trailing: Icon(Icons.access_time),
              onTap: () async {
                TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (picked != null) {
                  setState(() {
                    horarioInicio = picked;
                  });
                }
              },
            ),
            ListTile(
              title: Text(
                  'Data de Início: ${dataInicio != null ? dataInicio.toString().split(' ')[0] : 'Selecione'}'),
              trailing: Icon(Icons.calendar_today),
              onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(Duration(days: 365)),
                  lastDate: DateTime.now().add(Duration(days: 365)),
                );
                if (picked != null) {
                  setState(() {
                    dataInicio = picked;
                  });
                }
              },
            ),
            ListTile(
              title: Text(
                  'Data de Término: ${dataFim != null ? dataFim.toString().split(' ')[0] : 'Selecione'}'),
              trailing: Icon(Icons.calendar_today),
              onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: dataInicio != null
                      ? dataInicio!.add(Duration(days: 1))
                      : DateTime.now(),
                  firstDate: dataInicio != null ? dataInicio! : DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 365)),
                );
                if (picked != null) {
                  setState(() {
                    dataFim = picked;
                  });
                }
              },
            ),
            TextField(
              onChanged: (value) => anotacao = value,
              decoration: InputDecoration(labelText: 'Anotação'),
            ),
            ElevatedButton(
              onPressed: criarRotina,
              child: Text('Criar Rotina'),
            ),
          ],
        ),
      ),
    );
  }
}
