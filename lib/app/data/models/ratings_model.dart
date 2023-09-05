
class RatingsModels{
  final String idrating;
  final String calificaciones;
  final String cedula;

  RatingsModels({
    required this.idrating,
    required this.calificaciones,
    required this.cedula
  });

  static RatingsModels fromJson(Map<String, dynamic> json) => RatingsModels(
    idrating: json ['idrating'],
    calificaciones: json ['calificaciones'],
    cedula: json ['cedula']
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'idrating': idrating,
    'calificaciones': calificaciones,
    'cedula': cedula
  };
}