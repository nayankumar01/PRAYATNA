import 'package:flutter/material.dart';
import 'package:kishan_suvidha/customs/constants.dart';
import 'package:kishan_suvidha/customs/custom_button.dart';
import 'package:kishan_suvidha/main.dart';
import 'package:kishan_suvidha/signup.dart';

import 'customs/custom_scaffold.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Log In',
                style: TextStyle(
                    fontSize: 35,
                    color: kTertiaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      color: kTertiaryColor,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Login with your'),
                      TextSpan(
                          text: ' CuoreZen',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' account')
                    ])),
            const SizedBox(
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
                    borderSide: BorderSide(color: Colors.green, width: 2)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 2)),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.orange,
                  ),
                  onPressed: () {},
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.orange,
                ),
              ),
            ),
            SizedBox(
              height: 29,
            ),

            TextField(
              controller: passText,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: 'Password',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide:
                    BorderSide(color: Colors.deepOrange, width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.green, width: 2)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 2)),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.orange,
                  ),
                  onPressed: () {},
                ),
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password?',
                style: TextStyle(
                    fontSize: 16,
                    color: kSecondaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                title: 'Log in',
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()))
                }),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Or connect with',
                style: TextStyle(
                    fontSize: 18,
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 20, color: kTertiaryColor),
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

      ),
    );
  }
}
