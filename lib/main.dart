import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kishan_suvidha/sample_card.dart';
import 'package:kishan_suvidha/splash_screen.dart';
import 'package:kishan_suvidha/temperature.dart';
import 'package:kishan_suvidha/weather_page.dart';
import 'package:kishan_suvidha/side_bar.dart';
import 'package:kishan_suvidha/CropListPage.dart';
import 'package:kishan_suvidha/kishan_scheme_page.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

import 'package:kishan_suvidha/sample_card.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmer App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.lightGreen.shade300,
      drawer: SidebarPage(),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.indigo.shade50,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/prof1.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'नमस्ते, मोहन \u{1F64F}',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    // const SizedBox(
                    //   height: 1,
                    // ),
                    Center(
                      child: Container(
                          child: Lottie.asset('assets/images/farmer.json')),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        'Smart Farming',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Text(
                      'SERVICES',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _enhancedCardMenu(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TemperaturePage(),
                              ),
                            );
                          },
                          title: 'FIELD REPORT',
                          icon: 'assets/images/report2.jpg',
                        ),
                        _enhancedCardMenu(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CropListPage(),
                              ),
                            );
                          },
                          title: 'CROP INFORMATION',
                          icon: 'assets/images/agri.jpg',
                          // color: Colors.white,
                          // fontColor: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _enhancedCardMenu(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WeatherPage(),
                              ),
                            );
                          },
                          title: 'WEATHER FORECAST',
                          // fontColor: Colors.grey,
                          icon: 'assets/images/cloud1.jpg',
                        ),
                        _enhancedCardMenu(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => KisanSchemesPage(),
                              ),
                            );
                          },
                          title: 'GOVERNMENT SCHEMES',
                          icon: 'assets/images/kisan.png',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _enhancedCardMenu(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SampleCardPage(),
                              ),
                            );
                          },
                          title: 'DIAGNOSTICS',
                          icon: 'assets/images/leaf.jpg',
                        ),
                        _enhancedCardMenu(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SampleCardPage(),
                              ),
                            );
                          },
                          title: 'LEARNING CENTER',
                          icon: 'assets/images/edu.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              final userInputController = TextEditingController();
              return AlertDialog(
                title: const Text('Chatbot'),
                content: TextField(
                  controller: userInputController,
                  decoration:
                      const InputDecoration(labelText: 'Ask a question'),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      final userInput = userInputController.text;
                      final chatbotResponse = getChatbotResponse(userInput);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Chatbot Response'),
                            content: Text(chatbotResponse),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('Submit'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.chat),
      ),
    );
  }

  Widget _enhancedCardMenu({
    required String title,
    required String icon,
    // String lottieAnimation,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color fontColor = Colors.black,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(maxHeight: 230),
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: fontColor),
            ),
          ],
        ),
      ),
    );
  }
}

final Map<String, String> chatbotResponses = {
  'Kisan Samman Nidhi':
      'The PM Kisan Samman Nidhi provides financial assistance to eligible farmers.',
  'PMFBY':
      'The Pradhan Mantri Fasal Bima Yojana is a crop insurance scheme for farmers.',
  'Other Schemes':
      'There are various other schemes available for farmers. Please specify which one you want to know about.',
  'Default':
      'I am a simple chatbot. I may not have all the answers. Please consult the relevant authorities for detailed information.',
};

String getChatbotResponse(String userInput) {
  final response = chatbotResponses[userInput];
  return response ?? chatbotResponses['Default']!;
}
