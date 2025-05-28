import 'package:flutter/material.dart';

class FlutterTujuhC extends StatefulWidget {
  const FlutterTujuhC({super.key});

  @override
  State<FlutterTujuhC> createState() => _FlutterTujuhCState();
}

class _FlutterTujuhCState extends State<FlutterTujuhC> {
  String? isSelected;

  final List<String> _colors = [
    "Merah",
    "Kuning",
    "Hijau"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: isSelected,
              hint: Text("Pilihan Warna"),
              items: _colors.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  isSelected = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              isSelected ?? "Belum pilih warna",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            if (isSelected == "Merah") CircularProgressIndicator(),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 150,
              color: isSelected == "Merah"
                  ? Colors.red
                  : isSelected == "Hijau"
                      ? Colors.green
                      : isSelected == "Kuning"
                          ? Colors.yellow
                          : Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
