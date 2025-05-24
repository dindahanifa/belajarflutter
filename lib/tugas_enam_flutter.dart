import 'package:flutter/material.dart';

 class FlutterEnam extends StatefulWidget {
  const FlutterEnam({super.key});

  @override
  State<FlutterEnam> createState() => _FlutterEnamState();
}

class _FlutterEnamState extends State<FlutterEnam> {
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 30,), onPressed: () {
          },),
      ),
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
                child: Padding(padding: EdgeInsets.only(left: 20, top: 10),
                child: Text("Welcome Back", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 148, height: 13,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(padding: EdgeInsets.only(left: 24, top: 1),
                child: Text("Sign in to your account", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),),
              )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 148, height: 40,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(padding: EdgeInsets.only(left: 24, top: 1),
                child: Text('Email Address', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100)),
                ),
              ),
              SizedBox(width: 100,height: 13,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  decoration:InputDecoration(
                    hintText: '',
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: const Color.fromARGB(255, 201, 201, 201), width: 5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: const Color.fromARGB(255, 202, 201, 201), width: 1)
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 148, height: 40 ,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(padding: EdgeInsets.only(left: 24, top: 1),
                child: Text('Password', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),),
                ),
              ),
              SizedBox(width: 100, height: 13,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                controller: passwordController,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    passwordController.text = value;
                  },);
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
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
 