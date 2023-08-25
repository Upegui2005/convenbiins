class Inmuebles_model {

  final String nombre;
  final String tipoInmueble;
  final String descripcion;
  final String precio;
  final String direccion;
  final String imagen;

  Inmuebles_model({
    required this.nombre,
    required this.tipoInmueble,
    required this.descripcion,
    required this.precio,
    required this.direccion,
    required this.imagen,

  });

  static Inmuebles_model fromJson(Map<String, dynamic> json) =>
      Inmuebles_model(
          nombre: json['nombre'],
          tipoInmueble: json ['tipoInmueble'],
          descripcion: json ['descripcion'],
          precio: json ['precio'],
          direccion: json ['direccion'],
          imagen: json ['imagen']
      );

  Map<String, dynamic> toJson() =>
      <String, dynamic>{
        'nombre': nombre,
        'tipoInmueble': tipoInmueble,
        'descripcion': descripcion,
        'precio': precio,
        'direccion': direccion,
        'imagen': imagen
      };

}