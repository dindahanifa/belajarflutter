import 'package:flutter/material.dart';

class FlutterTujuhE extends StatefulWidget {
  const FlutterTujuhE({super.key});

  @override
  State<FlutterTujuhE> createState() => _FlutterTujuhEState();
}

class _FlutterTujuhEState extends State<FlutterTujuhE> {
  TimeOfDay? selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: context, 
                initialTime: TimeOfDay(hour: 1, minute: 10),
                );
                if (picked != null) {
                  setState(() {
                    selectedDay = picked;
                  });
                }
            },
            icon: Icon(Icons.watch_later),
            ),
          ],
        ),
      ),
    );
  }
}