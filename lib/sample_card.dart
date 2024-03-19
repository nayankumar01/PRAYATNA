import 'package:flutter/material.dart';

class SampleCardPage extends StatelessWidget {
  const SampleCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unique Card Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _customCard(
              title: 'Custom Card 1',
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              icon: Icons.star,
              iconColor: Colors.amber,
            ),
            const SizedBox(height: 20),
            _customCard(
              title: 'Custom Card 2',
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.lightBlue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              icon: Icons.music_note,
              iconColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _customCard({
    required String title,
    required LinearGradient gradient,
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      width: 250,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
        gradient: gradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: iconColor,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
