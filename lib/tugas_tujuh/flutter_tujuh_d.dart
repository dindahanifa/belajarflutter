import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class FlutterTujuhD extends StatefulWidget {
  const FlutterTujuhD({super.key});

  @override
  State<FlutterTujuhD> createState() => _FlutterTujuhDState();
}

class _FlutterTujuhDState extends State<FlutterTujuhD> {
DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () async {
              final DateTime? picked = await showDatePicker(
                context: context, 
                firstDate: DateTime(2000), 
                lastDate: DateTime(2100),
                );
                if (picked !=null){
                  setState(() {
                    selectedDate = picked;
                  });
                }
            },
            icon: Icon(Icons.calendar_month),
            ),
            Text(
              selectedDate == null
              ? "Pilih Tanggal"
              : "${selectedDate!.day.toString()}/${selectedDate!.timeZoneName.toString()}",
            ),
            Text(DateTime.now().toString()),
            Text(DateFormat.MMMMd().format(selectedDate ?? DateTime.now())),
          ],
        ),
      ),
    );
  }
}