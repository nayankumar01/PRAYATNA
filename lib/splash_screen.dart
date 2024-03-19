
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kishan_suvidha/customs/constants.dart';
import 'package:kishan_suvidha/customs/custom_button.dart';
import 'package:kishan_suvidha/login_page.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height *1 ,
        width: double.infinity,
        decoration: BoxDecoration(
          image:DecorationImage(
          image: AssetImage('assets/images/splash.jpg'),
            fit: BoxFit.cover,
          ) ),

        child: body(context),
      ),
    );
  }
  Widget body(context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(

        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
          ),
          const Spacer(),
          Lottie.asset('assets/images/farmer.json'),
          // const Spacer(),
          const Text('Welcome',style: TextStyle(
            fontSize: 40,
            color: kWhiteColor,
            fontWeight: FontWeight.bold
          ),),
          const Text('To',style: TextStyle(
              fontSize: 40,
              color: kWhiteColor,
              fontWeight: FontWeight.bold
          ),),
          Text('Krishi Suvidha',style: GoogleFonts.redressed(
              fontSize: 60,
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),),

          SizedBox(height: 200,),
          CustomButton(title: 'Getting Started', onTap: (){
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginPage(),),
            );
          },
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?  ',
              style: TextStyle(
                fontSize: 20,
                color: kWhiteColor
              ),),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));

                },
                child: Text('Login',
                style: TextStyle(
                  fontSize: 20,
                  color: kSecondaryColor,
                  fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
