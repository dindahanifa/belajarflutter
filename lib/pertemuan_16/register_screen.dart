import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan_16/database/db_helper.dart';
import 'package:flutter_application/pertemuan_16/login_screenapp.dart';
import 'package:flutter_application/pertemuan_16/model/user_model.dart';
import 'package:flutter_application/pertemuan_16/register_screen.dart';
import 'package:flutter_application/flutter_tiga.dart';
import 'package:flutter_application/nav.dart';
import 'package:flutter_application/utils/preference_handler.dart';

class RegisterScreenApp extends StatefulWidget {
  const RegisterScreenApp({super.key});
  static const String id = "/register_screen_app";

  @override
  State<RegisterScreenApp> createState() => _RegisterScreenAppState();
}

class _RegisterScreenAppState extends State<RegisterScreenApp> {
  bool isPasswordVisible = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Form(key: _formKey, 
    child: Stack(children: [buildBackground(), buildLayer()],),
    ),
    );
  }
  
  SafeArea buildLayer() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Register",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                height(12),
                Text("Register your account",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                height(24),

                // Email
                buildTitle("Email Address"),
                height(12),
                buildTextField(
                    hintText: "Enter your email", controller: emailController),
                height(16),

                // Name
                buildTitle("Name"),
                height(12),
                buildTextField(
                    hintText: "Enter your name", controller: nameController),
                height(16),

                // Username
                buildTitle("Username"),
                height(12),
                buildTextField(
                    hintText: "Enter your username",
                    controller: usernameController),
                height(16),

                // Phone
                buildTitle("Phone Number"),
                height(12),
                buildTextField(
                    hintText: "Enter your phone number",
                    controller: phoneController),
                height(16),

                // Password
                buildTitle("Password"),
                height(12),
                buildTextField(
                  hintText: "Enter your password",
                  controller: passwordController,
                  isPassword: true,
                ),
                height(12),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FlutterTiga()),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                height(24),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                      onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Email: ${emailController.text}");
                        print("Name: ${nameController.text}");
                        print("Username: ${usernameController.text}");
                        print("Phone: ${phoneController.text}");
                        print("Password: ${passwordController.text}");
                        DbHelper.registerUser(
                          data: UserModel(
                            email: emailController.text,
                            password: passwordController.text,
                            name: nameController.text,
                            phone: phoneController.text,
                            username: usernameController.text,
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Registration Successful!"),
                            backgroundColor: Colors.green,
                          ),
                        );
                        Navigator.pop(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                height(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account?",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Kembali ke login
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildBackground() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/dua.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildTextField({
    String? hintText,
    bool isPassword = false,
    required TextEditingController controller,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword ? !isPasswordVisible : false,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              )
            : null,
      ),
    );
  }

  SizedBox height(double h) => SizedBox(height: h);
  SizedBox width(double w) => SizedBox(width: w);

  Widget buildTitle(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
