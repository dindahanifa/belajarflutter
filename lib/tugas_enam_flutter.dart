// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application/flutter_tiga.dart';
import 'package:flutter_application/nav.dart';
import 'package:flutter_application/tugas_tujuh/tugas_tujuh_flutter.dart';
import 'package:flutter_application/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application/utils/preference_handler.dart';

class FlutterEnam extends StatefulWidget {
  static String id = '';

  const FlutterEnam({super.key});

  @override
  State<FlutterEnam> createState() => _FlutterEnamState();
}

class _FlutterEnamState extends State<FlutterEnam> {
  final passwordController = TextEditingController();
  bool isVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Login',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 30),
          onPressed: () {
            // Navigator.pop(context, HalamanNavigator());
          }
        ),
      ),

// Welcome Back
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 150, height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 1),
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),

// Sign in to your account
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 148, height: 13),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, top: 1),
                  child: Text(
                    "Sign in to your account",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ],
          ),

// TextField
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 148, height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, top: 1),
                  child: Text(
                    'Email Address',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                  ),
                ),
              ),
              SizedBox(width: 100, height: 13),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '',
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 201, 201, 201),
                        width: 5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 202, 201, 201),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

// Hint Text
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 148, height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, top: 1),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                  ),
                ),
              ),
              SizedBox(width: 100, height: 8),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  controller: passwordController,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      passwordController.text = value;
                    });
                  },
                  onSubmitted: (value) {
                    print(value);
                  },
                  textAlign: TextAlign.start,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: '',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                  ),
                ),
              ),

// Center Right
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff283FB1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
// ElevateButton
onPressed: () async {
  await PreferenceHandler.saveLogin(true);
  Navigator.pushNamed(context, FlutterTiga.id); 
},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

// Don't have an account?
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

//Campuran Divider
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Row(
                  children: [
                    Expanded(child: Divider(color: Colors.black, thickness: 0)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      child: Text(
                        'Or Sign in With',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.black, thickness: 0)),
                  ],
                ),
              ),

// ElevatedButton
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                child: Row(
                  children: [
                    SizedBox(height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, top: 3),
                        child: Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFAFAFA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
// Google
                            onPressed: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/google.png',
                                  width: 30,
                                  height: 40,
                                ),
                                SizedBox(height: 17, width: 10),
                                Text('Google', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
// Facebook
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, top: 3),
                        child: Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFAFAFA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/btnSigninwithFb.png',
                                  width: 30,
                                  height: 40,
                                ),
                                SizedBox(height: 17, width: 10),
                                Text('Facebook', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// Don't have account?
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 48, top: 1),
                    child: Text(
                      "Don't have account?",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(height: 15, width: 10),
                  ),
                  Text(
                    'Join Us',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
