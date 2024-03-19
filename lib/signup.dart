import 'package:flutter/material.dart';
import 'package:kishan_suvidha/customs/custom_button.dart';
import 'package:kishan_suvidha/login_page.dart';
import 'customs/constants.dart';
import 'customs/custom_scaffold.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  var userText= TextEditingController();
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children:
          [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Center(child: Text('Sign up',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),)),
              const SizedBox(
                height: 20,
              ),
              Center(child: Text('Create your account',style: TextStyle(fontSize: 20),)),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: userText,
                decoration: InputDecoration(
                  hintText: 'Username',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                      BorderSide(color: Colors.deepOrange, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                      BorderSide(color: Colors.greenAccent, width: 2)),

                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'Email',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                      BorderSide(color: Colors.deepOrange, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                      BorderSide(color: Colors.greenAccent, width: 2)),

                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                      BorderSide(color: Colors.deepOrange, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                      BorderSide(color: Colors.greenAccent, width: 2)),

                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passText,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                      BorderSide(color: Colors.deepOrange, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                      BorderSide(color: Colors.greenAccent, width: 2)),

                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 300,
                  child: CustomButton(
                      title: 'Sign up',
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()))
                      }),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(child: Text('or',style: TextStyle(fontSize: 20),)),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 300,

                  child: CustomButton(
                      title: 'Sign In with Google',
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()))
                      }),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => signuppage()));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 20,
                          color: kSecondaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
        ),
      ),
    );
  }
}
