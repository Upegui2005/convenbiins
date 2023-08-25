

class Usuarios_model {

  final String nombre;
  final String apellido;
  final String fechaNacimiento;
  final String telefono;
  final String direccion;
  final String tipoUsuario;

  Usuarios_model({
    required this.nombre,
    required this.apellido,
    required this.fechaNacimiento,
    required this.telefono,
    required this.direccion,
    required this.tipoUsuario
  });

  static Usuarios_model fromJson(Map<String, dynamic> json) =>
      Usuarios_model(
          nombre: json['nombre'],
          apellido: json ['apellido'],
          fechaNacimiento: json ['fechaNacimiento'],
          telefono: json ['telefono'],
          direccion: json ['direccion'],
          tipoUsuario: json ['tipoUsuario']
      );

  Map<String, dynamic> toJson() =>
      <String, dynamic>{
        'nombre': nombre,
        'apellido': apellido,
        'fechaNacimiento': fechaNacimiento,
        'telefono': telefono,
        'direccion': direccion,
        'tipoUsuario': tipoUsuario
      };

}