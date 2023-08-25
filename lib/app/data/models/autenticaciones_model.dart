class Autenticaciones_model{

  final String email;
  final String contrasena;

  Autenticaciones_model({
    required this.email,
    required this.contrasena,
  });

  static Autenticaciones_model fromJson(Map<String, dynamic>json) =>
      Autenticaciones_model(
          email: json ['email'],
          contrasena: json ['contrasena']
      );

  Map<String, dynamic> toJson() =>
      <String, dynamic>{
        'email': email,
        'contraseña': contrasena
      };
}