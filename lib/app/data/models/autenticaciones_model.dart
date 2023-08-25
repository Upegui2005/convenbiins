
class AutenticacionesModels{
  final String idautenticacion;
  final String email;
  final String password;

  AutenticacionesModels({
    required this.idautenticacion,
    required this.email,
    required this.password
  });

  static AutenticacionesModels fromJson(Map<String, dynamic> json) => AutenticacionesModels(
    idautenticacion: json ['idautenticacion'],
    email: json ['email'],
    password: json ['password']
  );

  Map<String, dynamic> toJson() => <String, dynamic> {
    'idautenticacion': idautenticacion,
    'email': email,
    'password': password
  };
}