class Routine {
  final String objetivo;
  final String descricao;
  final String horarioInicio;
  final String anotacao;
  final DateTime dataInicio;
  final DateTime dataFim;
  final Map<String, bool> progresso;

  Routine({
    required this.objetivo,
    required this.descricao,
    required this.horarioInicio,
    required this.anotacao,
    required this.dataInicio,
    required this.dataFim,
    required this.progresso,
  });

  Map<String, dynamic> toMap() {
    return {
      'objetivo': objetivo,
      'descricao': descricao,
      'horarioInicio': horarioInicio,
      'anotacao': anotacao,
      'dataInicio': dataInicio.toIso8601String(),
      'dataFim': dataFim.toIso8601String(),
      'progresso': progresso,
    };
  }

  factory Routine.fromMap(Map<String, dynamic> map) {
    return Routine(
      objetivo: map['objetivo'],
      descricao: map['descricao'],
      horarioInicio: map['horarioInicio'],
      anotacao: map['anotacao'],
      dataInicio: DateTime.parse(map['dataInicio']),
      dataFim: DateTime.parse(map['dataFim']),
      progresso: Map<String, bool>.from(map['progresso']),
    );
  }
}
