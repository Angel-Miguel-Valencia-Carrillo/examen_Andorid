import 'package:flutter/material.dart';

class Proveedor {
  final int idProveedor;
  final String nombre;
  final String telefono;

  Proveedor({
    required this.idProveedor,
    required this.nombre,
    required this.telefono,
  });
}

class ProveedoresScreen extends StatelessWidget {
  final List<Proveedor> proveedores = [
    Proveedor(idProveedor: 1, nombre: 'Proveedor A', telefono: '123456789'),
    Proveedor(idProveedor: 2, nombre: 'Proveedor B', telefono: '987654321'),
    Proveedor(idProveedor: 3, nombre: 'Proveedor C', telefono: '456123789'),
    Proveedor(idProveedor: 4, nombre: 'Proveedor D', telefono: '111222333'),
    Proveedor(idProveedor: 5, nombre: 'Proveedor E', telefono: '444555666'),
  ];

  // Lista de colores para cada contenedor
  final List<Color> colores = [
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Angel Valencia 0738'),
        centerTitle: true, // Centra el título en el AppBar
        backgroundColor: Colors.blue, // Color de fondo azul
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: proveedores.map((proveedor) {
            // Obtener el índice del proveedor actual
            int index = proveedores.indexOf(proveedor);
            // Asignar un color único basado en el índice
            Color color = colores[index % colores.length];

            return Container(
              margin: const EdgeInsets.only(bottom: 10), // Espacio entre filas
              padding: const EdgeInsets.all(12), // Padding más pequeño
              decoration: BoxDecoration(
                color: color, // Color único para cada contenedor
                borderRadius: BorderRadius.circular(12), // Bordes redondeados
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ) // Sombra
                ],
              ),
              child: Center(
                // Centra el contenido del contenedor
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centra verticalmente
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Centra horizontalmente
                  children: [
                    Text(
                      'ID: ${proveedor.idProveedor}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16, // Tamaño de fuente un poco más pequeño
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6), // Espacio más pequeño entre textos
                    Text(
                      'Nombre: ${proveedor.nombre}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14, // Tamaño de fuente un poco más pequeño
                      ),
                    ),
                    SizedBox(height: 6), // Espacio más pequeño entre textos
                    Text(
                      'Teléfono: ${proveedor.telefono}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14, // Tamaño de fuente un poco más pequeño
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Desactiva el banner de depuración
    home: ProveedoresScreen(),
  ));
}
