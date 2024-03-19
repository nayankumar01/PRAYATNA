import 'package:flutter/material.dart';

class CropListPage extends StatelessWidget {
  // Define a list of crops with their names, moisture requirements, and image paths
  final List<Map<String, dynamic>> crops = [
    {
      'name': 'Rice',
      'moistureRequirement': '80%',
      'imagePath': 'assets/images/rice.png',
      'temperatureRange': '20°C - 35°C',
      'soilType': 'Alluvial soil',
      'season': 'Kharif',
    },
    {
      'name': 'Wheat',
      'moistureRequirement': '60%',
      'imagePath': 'assets/images/wheat1.png',
      'temperatureRange': '10°C - 25°C',
      'soilType': 'Loamy soil',
      'season': 'Rabi', // Image asset path for Wheat
    },
    {
      'name': 'Cotton',
      'moistureRequirement': '75%',
      'imagePath': 'assets/images/cotton.jpg',
      'temperatureRange': '25°C - 35°C',
      'soilType': 'Black soil',
      'season': 'Kharif',
    },
    {
      'name': 'Rice',
      'moistureRequirement': '80%',
      'imagePath': 'assets/images/rice.png',
      'temperatureRange': '20°C - 35°C',
      'soilType': 'Alluvial soil',
      'season': 'Kharif',
    },
    {
      'name': 'Wheat',
      'moistureRequirement': '60%',
      'imagePath': 'assets/images/wheat1.png',
      'temperatureRange': '10°C - 25°C',
      'soilType': 'Loamy soil',
      'season': 'Rabi', // Image asset path for Wheat
    },
    {
      'name': 'Cotton',
      'moistureRequirement': '75%',
      'imagePath': 'assets/images/cotton.jpg',
      'temperatureRange': '25°C - 35°C',
      'soilType': 'Black soil',
      'season': 'Kharif',
    },
    {
      'name': 'Rice',
      'moistureRequirement': '80%',
      'imagePath': 'assets/images/rice.png',
      'temperatureRange': '20°C - 35°C',
      'soilType': 'Alluvial soil',
      'season': 'Kharif',
    },
    {
      'name': 'Wheat',
      'moistureRequirement': '60%',
      'imagePath': 'assets/images/wheat1.png',
      'temperatureRange': '10°C - 25°C',
      'soilType': 'Loamy soil',
      'season': 'Rabi', // Image asset path for Wheat
    },
    {
      'name': 'Cotton',
      'moistureRequirement': '75%',
      'imagePath': 'assets/images/cotton.jpg',
      'temperatureRange': '25°C - 35°C',
      'soilType': 'Black soil',
      'season': 'Kharif',
    },
    {
      'name': 'Rice',
      'moistureRequirement': '80%',
      'imagePath': 'assets/images/rice.png',
      'temperatureRange': '20°C - 35°C',
      'soilType': 'Alluvial soil',
      'season': 'Kharif',
    },
    {
      'name': 'Wheat',
      'moistureRequirement': '60%',
      'imagePath': 'assets/images/wheat1.png',
      'temperatureRange': '10°C - 25°C',
      'soilType': 'Loamy soil',
      'season': 'Rabi', // Image asset path for Wheat
    },
    {
      'name': 'Cotton',
      'moistureRequirement': '75%',
      'imagePath': 'assets/images/cotton.jpg',
      'temperatureRange': '25°C - 35°C',
      'soilType': 'Black soil',
      'season': 'Kharif',
    },
    // Add more crops with their details
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Famous Crops in India'),
      ),
      body: ListView.builder(
        itemCount: crops.length,
        itemBuilder: (context, index) {
          final crop = crops[index];
          return ListTile(
            title: Text(crop['name']),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Moisture Requirement: ${crop['moistureRequirement']}'),
                Text('Temperature Range: ${crop['temperatureRange']}'),
                Text('Soil Type: ${crop['soilType']}'),
                Text('Season: ${crop['season']}'),
              ],
            ),
            leading: Image.asset(
              crop['imagePath'],
              width: 50, // Adjust the image size as needed
              height: 50,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
