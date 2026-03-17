import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFF1A237E)),
            currentAccountPicture: const Padding(
              padding: EdgeInsets.only(bottom: 10.0), // Espaciado crítico
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://raw.githubusercontent.com/DiegoCruz0475/U2_ACT3_DACA/refs/heads/main/imagenes/casa%20(1).jfif'),
              ),
            ),
            accountName: const Text(
              'Yeyo Dwellings',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            accountEmail: const Text(
              'a.23308051280475@cbtis128.edu.mx\n\nAvenida El Julian Campoya\n\n656-777-6767',
              style: TextStyle(height: 1.2),
            ),
          ),
          _buildItem(context, Icons.home, 'Inicio', '/', Colors.grey),
          _buildItem(context, Icons.sell, 'Venta', '/venta', Colors.green),
          _buildItem(context, Icons.key, 'Renta', '/renta', Colors.blue),
          _buildItem(context, Icons.people, 'Agentes', '/agentes', Colors.orange),
          _buildItem(context, Icons.contact_mail, 'Contacto', '/contacto', Colors.red),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, IconData icon, String title, String route, Color color) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      onTap: () => Navigator.pushReplacementNamed(context, route),
    );
  }
}