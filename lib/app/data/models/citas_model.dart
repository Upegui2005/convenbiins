
class CitasModels{
  final String idcita;
  final DateTime horacita;
  final String asesor;
  final String usuario;

  CitasModels({
    required this.idcita,
    required this.horacita,
    required this.asesor,
    required this.usuario
  });

  static CitasModels fromJson(Map<String, dynamic> json) => CitasModels(
    idcita: json ['idcita'],
    horacita: json ['horacita'],
    asesor: json ['asesor'],
    usuario: json ['usuario']
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'idcita': idcita,
    'horacita': horacita,
    'asesor': asesor,
    'usuario': usuario
  };
}