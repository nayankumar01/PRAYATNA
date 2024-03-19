import 'package:flutter/material.dart';
import 'package:kishan_suvidha/customs/constants.dart';

class CustomScaffold extends StatelessWidget {
  Widget child;
  CustomScaffold({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.jpg'),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.305,
            child: customContainer(context),
          )
        ],
      ),
    );
  }

  Widget customContainer(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(92))),
      child: child,
    );
  }
}
