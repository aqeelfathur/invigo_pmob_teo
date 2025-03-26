import 'package:flutter/material.dart';
import 'package:latihan_dart_flutter/pages/custom_drawer.dart';
import 'package:latihan_dart_flutter/pages/main_screen.dart';
import 'package:latihan_dart_flutter/widgets/build_list_tile.dart';

class ReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
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
          buildListTile(
              Icons.bar_chart, 'Report in Month', '2 Reports'),
          SizedBox(height: 16),
          buildListTile(Icons.bar_chart, 'Reports in Week',
              '8 Reports'),
        ],
      ),
    );
  }
}