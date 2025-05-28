import 'package:flutter/material.dart';


class FlutterTujuhB extends StatefulWidget {
  const FlutterTujuhB({super.key});
  static String id = "tugas_tujuh_flutter";

  @override
  State<FlutterTujuhB> createState() => _FlutterTujuhBState();
}

class _FlutterTujuhBState extends State<FlutterTujuhB> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Switch(value: isSwitchOn, onChanged: (value) {
            setState(() {
              isSwitchOn = value;
            });
          },
                      ),
                      Text(isSwitchOn ? "Mode Gelap" : "Mode Terang", style: TextStyle(fontSize: isSwitchOn ? 25 : 18),
                      ),
            ],
            ),
      ),
    );
  }
}