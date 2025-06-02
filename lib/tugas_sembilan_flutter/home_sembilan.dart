import 'package:flutter/material.dart';
import 'package:flutter_application/tugas_sembilan_flutter/flutter_sembilan_a.dart';
import 'package:flutter_application/tugas_sembilan_flutter/flutter_sembilan_b.dart';
import 'package:flutter_application/tugas_sembilan_flutter/flutter_sembilan_c.dart';

class HomeSembilan extends StatelessWidget {
  const HomeSembilan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterSembilan()),
                  );
                }, 
                style: ElevatedButton.styleFrom(minimumSize: Size(150, 5tu0),
                textStyle: TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                ),
                child: Text("List"),
                ),
            ],
          ),
          SizedBox(height: 16,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=> FlutterSembilanB()),
                );
            }, 
            style: ElevatedButton.styleFrom(minimumSize: Size(150, 50),
                textStyle: TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                ),
            child: Text("Map"),
            ),
          SizedBox(height: 16,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=> FlutterSembilanC()),
                );
            }, 
            style: ElevatedButton.styleFrom(minimumSize: Size(150, 50),
                textStyle: TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                ),
            child: Text("Model")),
        ],
      ),
    );
  }
}

