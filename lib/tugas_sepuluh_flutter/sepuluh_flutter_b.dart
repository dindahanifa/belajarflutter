import 'package:flutter/material.dart';
import 'package:flutter_application/tugas_sepuluh_flutter/sepuluh_flutter_a.dart';

class SepuluhFlutterB extends StatelessWidget {
  const SepuluhFlutterB({super.key, required this.nama, required this.email, required this.nomorHp, required this.kotaDomisili});
  final String nama;
  final String email;
  final String nomorHp;
  final String kotaDomisili;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Terimakasih'), backgroundColor: Colors.white,),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(16), child: Text("Terimakasih sudah mengisi form $nama, $email, $nomorHp, $kotaDomisili", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),textAlign: TextAlign.center,),),
        ],
      ),
   );
  }
}