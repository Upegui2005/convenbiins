class UsuariosInmuebles_model {

  final String id_Usuario;
  final String id_Inmueble;

  UsuariosInmuebles_model({
    required this.id_Usuario,
    required this.id_Inmueble,
  });

  static UsuariosInmuebles_model fromJson(Map<String, dynamic>json) =>
      UsuariosInmuebles_model(
          id_Usuario: json ['id_Usuario'],
          id_Inmueble: json ['id_Inmueble']
      );

  Map <String, dynamic> toJson() =>
      <String, dynamic>{
        'id_Usuario': id_Usuario,
        'id_Inmueble': id_Inmueble
      };









}