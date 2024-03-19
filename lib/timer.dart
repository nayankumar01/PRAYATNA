import 'package:flutter/material.dart';
import 'dart:async';
class TimerPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Style your timer popup here
      width: 200,
      height: 100,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Timer Popup',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}