import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WeatherPage(),
  ));
}

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Weather Forecast'),
      //   backgroundColor: Colors.transparent,
      //   // elevation: 0,
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background2.jpg'), // Replace with your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WeatherIcon(
                  icon: Icons.wb_sunny, label: 'Sunny', temperature: '25°C'),
              SizedBox(height: 16),
              LocationText(location: 'Delhi, India'),
              SizedBox(height: 100),
              WeatherDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final String temperature;

  WeatherIcon({
    required this.icon,
    required this.label,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 96,
          color: Colors.amber,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          temperature,
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class LocationText extends StatelessWidget {
  final String location;

  LocationText({required this.location});

  @override
  Widget build(BuildContext context) {
    return Text(
      location,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

class WeatherDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WeatherDetailItem(label: 'Humidity', value: '65%'),
        WeatherDetailItem(label: 'Wind', value: '5 km/h'),
        WeatherDetailItem(label: 'Pressure', value: '1013 hPa'),
      ],
    );
  }
}

class WeatherDetailItem extends StatelessWidget {
  final String label;
  final String value;

  WeatherDetailItem({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
