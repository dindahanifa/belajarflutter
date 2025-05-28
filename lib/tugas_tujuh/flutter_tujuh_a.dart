import 'package:flutter/material.dart';


class FlutterTujuhA extends StatefulWidget {
  const FlutterTujuhA({super.key});
  static String id = "tugas_tujuh_flutter";

  @override
  State<FlutterTujuhA> createState() => _FlutterTujuhAState();
}

class _FlutterTujuhAState extends State<FlutterTujuhA> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.black,
                  checkColor: Colors.white,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.black, width: 0),
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      print("Checkbox value changed : $value");
                      _isChecked = value ?? false;
                    });
                  },
                ),
                Text(
                  _isChecked ? "sudah bagus" : "belum bagus",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
