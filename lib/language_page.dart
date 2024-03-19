import 'package:flutter/material.dart';



class LanguagePage extends StatelessWidget {
  LanguagePage({Key? key}) : super(key: key);

  // Define a list of Indian languages
  final List<String> languages = [
    'Hindi',
    'Tamil',
    'Telugu',
    'Kannada',
    'Bengali',
    'Marathi',
    'Gujarati',
    'Punjabi',
    'Odia',
    'Malayalam',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indian Languages'),
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (BuildContext context, int index) {
          final language = languages[index];
          return ListTile(
            title: Text(language),
            onTap: () {
              // You can add navigation or actions for each language tile here
              // For example, navigate to a page with more details about the language
              // or perform some specific action.
              print('Selected language: $language');
            },
          );
        },
      ),
    );
  }
}
