
class RatingsModels{
  final String idrating;
  final String calificaciones;

  RatingsModels({
    required this.idrating,
    required this.calificaciones
  });

  static RatingsModels fromJson(Map<String, dynamic> json) => RatingsModels(
    idrating: json ['idrating'],
    calificaciones: json ['calificaciones']
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'idrating': idrating,
    'calificaciones': calificaciones
  };
}