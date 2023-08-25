import 'package:flutter/rendering.dart';

class Aprobaciones_model{

  final String nombreUsuario;
  final String direccion;
  final String copiaCedula;
  final String certificadoLibertad;

  Aprobaciones_model({
    required this.nombreUsuario,
    required this.direccion,
    required this.copiaCedula,
    required this.certificadoLibertad,
  });

  static Aprobaciones_model fromJson(Map<String, dynamic>json) =>
      Aprobaciones_model(
          nombreUsuario: json['nombreUsuario'],
          direccion: json['direccion'],
          copiaCedula: json['copiaCedula'],
          certificadoLibertad: json['certificadoLibertad']
      );

  Map<String, dynamic> toJson() =>
      <String, dynamic>{
        'nombreUsuario': nombreUsuario,
        'direccion':direccion,
        'copiaCedula': copiaCedula,
        'certificadoLibertad': certificadoLibertad
      };
}