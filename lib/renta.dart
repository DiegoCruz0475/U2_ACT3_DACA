import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class RentaScreen extends StatelessWidget {
  const RentaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rentas", style: TextStyle(color: Colors.white)), backgroundColor: const Color(0xFF1A237E), iconTheme: const IconThemeData(color: Colors.white)),
      drawer: const DrawerMenu(),
      body: Center(child: ClipRRect(borderRadius: BorderRadius.circular(15), child: Image.network('https://raw.githubusercontent.com/DiegoCruz0475/U2_ACT3_DACA/refs/heads/main/imagenes/casa2.jpg', width: 200, height: 200, fit: BoxFit.cover))),
    );
  }
}