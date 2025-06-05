import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan_16/login_screenapp.dart';
import 'package:flutter_application/flutter_tiga.dart';
import 'package:flutter_application/tugas_enam_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void checkLoginStatus() async {
  bool isLoggedIn = await PrefenceHandler.getLogin();
  // print("isLogin: $isLogIn");
  // if (isLoggedIn) {
  //   Navigator.pushNamedAndRemoveUntil(context, FlutterTiga.id, (route)=> false);
  // } else {
  //   Navigator.pushNamedAndRemoveUntil(context, "/login", (route)=> false);
  // }
  Navigator.pushNamedAndRemoveUntil(context, LoginScreenApp.id, (route)=> false,);
}

@override
void initState() {
  super.initState();
  checkLoginStatus();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset('assets/ig.jpg'),
            SizedBox(height: 20,),
            Text('Welcome', style: TextStyle(fontWeight: FontWeight.bold),),
            Spacer(),
            SafeArea(child: Text('v 4.0', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),))
          ],
        ),
      ),
    );
  }
}

class PrefenceHandler {
  static Future<bool> getLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLogin') ?? false;
  }

  static void saveLogin(bool bool) {}
}
