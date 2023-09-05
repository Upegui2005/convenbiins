
import 'dart:ffi';

class InmublesModel{
  final String idinmueble;
  final String nombre;
  final String tipoinmueble;
  final String descripcion;
  final Float precio;
  final String direccion;
  final String imagen;
  final String cedula;

  InmublesModel({
    required this.idinmueble,
    required this.nombre,
    required this.tipoinmueble,
    required this.descripcion,
    required this.precio,
    required this.direccion,
    required this.imagen,
    required this.cedula
  });

  static InmublesModel fromJson(Map<String, dynamic> json) => InmublesModel(
    idinmueble: json ['idinmueble'],
    nombre: json ['nombre'],
    tipoinmueble: json ['tipoinmueble'],
    descripcion: json ['descripcion'],
    precio: json ['precio'],
    direccion: json ['direccion'],
    imagen: json ['imagen'],
    cedula: json ['cedula']
  );

  Map<String, dynamic> toJson() => <String, dynamic> {
    'idinmueble': idinmueble,
    'nombre': nombre,
    'tipoinmueble': tipoinmueble,
    'descripcion': descripcion,
    'precio': precio,
    'direccion': direccion,
    'imagen': imagen,
    'cedula': cedula
  };
}