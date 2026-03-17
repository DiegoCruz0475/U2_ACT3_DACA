import 'package:flutter/material.dart';
// Importación de cada archivo individual
import '/inicio.dart';
import '/venta.dart';
import '/renta.dart';
import '/agentes.dart';
import '/contacto.dart';


void main() => runApp(const YeyoDwellingsApp());

class YeyoDwellingsApp extends StatelessWidget {
  const YeyoDwellingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yeyo Dwellings',
      theme: ThemeData(primarySwatch: Colors.indigo),
      
      // Configuración de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioScreen(),
        '/venta': (context) => const VentaScreen(),
        '/renta': (context) => const RentaScreen(),
        '/agentes': (context) => const AgentesScreen(),
        '/contacto': (context) => const ContactoScreen(),
      },
    );
  }
}