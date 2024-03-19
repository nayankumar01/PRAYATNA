import 'package:flutter/material.dart';
import 'package:kishan_suvidha/customs/constants.dart';

class CustomButton extends StatelessWidget {
  String title;
  void Function() onTap;

  CustomButton({
    required this.title,
    required this.onTap,
    super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: onTap,
        child: Container(
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Text(title,style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            )),
          ),
        )

    );
  }
}