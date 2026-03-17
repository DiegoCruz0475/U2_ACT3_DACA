import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class VentaScreen extends StatelessWidget {
  const VentaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ventas", style: TextStyle(color: Colors.white)), backgroundColor: const Color(0xFF1A237E), iconTheme: const IconThemeData(color: Colors.white)),
      drawer: const DrawerMenu(),
      body: Center(child: ClipRRect(borderRadius: BorderRadius.circular(15), child: Image.network('https://raw.githubusercontent.com/DiegoCruz0475/U2_ACT3_DACA/refs/heads/main/imagenes/casa1.jpg', width: 200, height: 200, fit: BoxFit.cover))),
    );
  }
}