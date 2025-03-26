import 'package:flutter/material.dart';
import 'package:latihan_dart_flutter/pages/custom_drawer.dart';
import 'package:latihan_dart_flutter/pages/main_screen.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warehouse'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, size: 28),
            onPressed: () {},
          ),
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.person, size: 28),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ],
      ),
      drawer: CustomDrawer(
        onTap: (index) {
          // Navigasi ke layar yang sesuai
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildListTile(
              Icons.inventory, 'Total Items in Inventory', '150 items'),
          SizedBox(height: 16),
          _buildListTile(Icons.notifications, 'Notifications',
              'You have 3 new notifications'),
        ],
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {},
      ),
    );
  }
}
