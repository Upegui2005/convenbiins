
class AprobacionesModels{
  final String idaprobaciones;
  final String nombreusuario;
  final String direccion;
  final String copiacedula;
  final String certificadolibertad;
  final String idinmueble;
  final String cedula;

  AprobacionesModels({
    required this.idaprobaciones,
    required this.nombreusuario,
    required this.direccion,
    required this.copiacedula,
    required this.certificadolibertad,
    required this.idinmueble,
    required this.cedula
  });

  static AprobacionesModels fromJson(Map<String, dynamic> json) => AprobacionesModels(
    idaprobaciones: json ['idaprobaciones'],
    nombreusuario: json ['nombreusuario'],
    direccion: json ['direccion'],
    copiacedula: json ['copiacedula'],
    certificadolibertad: json ['certificadolibertad'],
    idinmueble: json ['idinmueble'],
    cedula: json ['cedula']
  );

  Map<String, dynamic> toJson() => <String, dynamic> {
    'idaprobaciones': idaprobaciones,
    'nombreusuario': nombreusuario,
    'direccion': direccion,
    'copiacedula': copiacedula,
    'certificadolibertad': certificadolibertad,
    'idinmueble': idinmueble,
    'cedula': cedula
  };
}