
class UsersModel{

  final String cedula;
  final String nombre;
  final String apellido;
  final DateTime fechaNacimiento;
  final int telefono;
  final String direccion;
  final String tipoUsuario;
  final String idautenticacion;
  final String idratings;

  UsersModel({
    required this.cedula,
    required this.nombre,
    required this.apellido,
    required this.fechaNacimiento,
    required this.telefono,
    required this.direccion,
    required this.tipoUsuario,
    required this.idautenticacion,
    required this.idratings
  });

  static UsersModel fromJson(Map<String, dynamic> json) => UsersModel(
    cedula: json ['cedula'],
    nombre: json ['nombre'],
    apellido: json ['apellido'],
    fechaNacimiento: json ['fechaNacimiento'],
    telefono: json ['telefono'],
    direccion: json ['direccion'],
    tipoUsuario: json ['tipuUsuario'],
    idautenticacion: json ['idautenticacion'],
    idratings: json ['idratings']
  );

  Map<String, dynamic> toJson() => <String, dynamic> {
    'cedula': cedula,
    'nombre': nombre,
    'apellido':apellido,
    'fechaNacimiento': fechaNacimiento,
    'telefono':telefono,
    'direccion':direccion,
    'tipoUsuario':tipoUsuario,
    'idautenticacion':idautenticacion,
    'idratings':idratings
  };
}