class Ratings_model {

  final String calificacion;

  Ratings_model ({
    required this.calificacion,
  });

  static Ratings_model fromJson(Map<String, dynamic> json) =>
      Ratings_model(
          calificacion: json['calificacion']
      );

  Map<String, dynamic> toJson() =>
      <String, dynamic>{
        'calificacion': calificacion
      };
}