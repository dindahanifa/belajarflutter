import 'package:flutter/material.dart';
// import 'package:flutter_application/flutter_tiga.dart';
// import 'package:flutter_application/percobaanflutter.dart';
// import 'package:flutter_application/tugas_satu_flutter.dart';
// import 'package:flutter_application/tes_dua_flutter.dart';
// import 'package:flutter_application/flutter_tiga.dart';
// import 'package:flutter_application/tugas_dua_flutter.dart';
// import 'package:flutter_application/tugas_empat_flutter.dart';
// import 'package:flutter_application/flutter_lima.dart';
import 'package:flutter_application/tugas_enam_flutter.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Percobaan',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 95, 144)),
      ),
      home: FlutterEnam()
    );
  }
}

