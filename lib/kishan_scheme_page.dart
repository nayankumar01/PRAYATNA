import 'package:flutter/material.dart';

class KisanSchemesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kisan Schemes in India'),
        backgroundColor: Colors.green, // Change the app bar color
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          KisanSchemeCard(
            title: 'PM Kisan Samman Nidhi',
            description:
                'A scheme providing financial assistance to eligible farmers.',
            color: Colors.blue, // Change the card color
          ),
          KisanSchemeCard(
            title: 'Pradhan Mantri Fasal Bima Yojana (PMFBY)',
            description: 'A crop insurance scheme for farmers.',
            color: Colors.orange, // Change the card color
          ),
          KisanSchemeCard(
            title: 'National Mission on Sustainable Agriculture (NMSA)',
            description:
                'Promotes sustainable agriculture practices and technologies.',
            color: Colors.purple, // Change the card color
          ),
          KisanSchemeCard(
            title: 'PM-Kisan Pension Scheme',
            description:
                'A pension scheme for small and marginal farmers above the age of 60.',
            color: Colors.teal, // Change the card color
          ),
          KisanSchemeCard(
            title: 'Paramparagat Krishi Vikas Yojana (PKVY)',
            description: 'Promotes organic farming among farmers.',
            color: Colors.red, // Change the card color
          ),
          KisanSchemeCard(
            title: 'Pradhan Mantri Krishi Sinchai Yojana (PMKSY)',
            description:
                'Aims to achieve convergence of investments in irrigation.',
            color: Colors.green, // Change the card color
          ),
          KisanSchemeCard(
            title: 'Rashtriya Krishi Vikas Yojana (RKVY)',
            description:
                'Supports various agricultural development activities.',
            color: Colors.blue, // Change the card color
          ),
          KisanSchemeCard(
            title: 'Soil Health Card Scheme',
            description: 'Provides information on soil health to farmers.',
            color: Colors.orange, // Change the card color
          ),
        ],
      ),
    );
  }
}

class KisanSchemeCard extends StatelessWidget {
  final String title;
  final String description;
  final Color color;

  KisanSchemeCard({
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Add elevation for a card-like appearance
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Change the text color
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            color: Colors.white70, // Change the text color
          ),
        ),
        tileColor: color, // Use the specified color for the card background
      ),
    );
  }
}
