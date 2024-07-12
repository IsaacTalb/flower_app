// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../constants.dart'; // Import the constants.dart file

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flower App'),
        toolbarHeight: 50, // Set the height for the app bar
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/plants.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                'Sample Text',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            child: Row(
              children: [
                _buildColumnButton(context, 'How to Take Care'),
                _buildColumnButton(context, 'How to Cook'),
                _buildColumnButton(context, 'Study Knowledge'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'How to Take Care',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Knowledge',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Messages',
          ),
        ],
      ),
    );
  }

  Widget _buildColumnButton(BuildContext context, String label) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        child: Text(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.skyBlue, // Use backgroundColor for button color
        ),
      ),
    );
  }
}
