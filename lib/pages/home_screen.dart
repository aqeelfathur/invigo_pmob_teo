import 'package:flutter/material.dart';
import 'package:latihan_dart_flutter/pages/custom_drawer.dart';
import 'package:latihan_dart_flutter/pages/main_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:15,),
            Text(
              'Hello, user!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height:15,),
            
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: _buildGridCard('0', 'Out of stock')),
                  Expanded(child: _buildGridCard('0', 'Product')),

                  Expanded(child: _buildGridCard('0', 'Total Stocks')),
                  
                  Expanded(child: _buildGridCard('0', 'Low Stocks')),
                            ],
                          ),
            ),
            SizedBox(height:15,),
            Text(
              'Report',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridCard(String value, String label) {
    return Card(
      elevation: 4,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Text(
              value,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
            Text(
              label,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
