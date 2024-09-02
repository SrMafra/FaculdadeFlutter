import 'package:flutter/material.dart';
import 'package:meus_habitos/models/routine_model.dart';

class RoutineListItem extends StatelessWidget {
  final Routine routine;

  const RoutineListItem({required this.routine});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(routine.objetivo),
      subtitle: Text(
          'Tarefa: ${routine.descricao}\nHorário: ${routine.horarioInicio}\nAnotação: ${routine.anotacao}'),
    );
  }
}
