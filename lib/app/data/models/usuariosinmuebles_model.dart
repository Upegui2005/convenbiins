
class UsuariosinmueblesModels{
  final String idusuarioinmueble;
  final String cedula;
  final String idinmueble;

  UsuariosinmueblesModels({
    required this.idusuarioinmueble,
    required this.cedula,
    required this.idinmueble
  });

  static UsuariosinmueblesModels fromJson(Map<String, dynamic> json) => UsuariosinmueblesModels(
    idusuarioinmueble: json ['idusuarioinmueble'],
    cedula: json ['cedula'],
    idinmueble: json ['idinmueble']
  );

  Map<String, dynamic> toJson() => <String, dynamic> {
    'idusuarioinmueble': idusuarioinmueble,
    'cedula': cedula,
    'idinmueble': idinmueble
  };
}
