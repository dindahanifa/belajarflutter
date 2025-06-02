import 'package:flutter/material.dart';


class DelapanFlutterB extends StatefulWidget {
  const DelapanFlutterB({super.key});

  @override
  State<DelapanFlutterB> createState() => _DelapanFlutterBState();
}

class _DelapanFlutterBState extends State<DelapanFlutterB> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tentang Aplikasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Aplikasi ini menampilkan drawer dan bottom navigator, di drawer ada termasuk form input yang berupa user dan image, dan di drawer termasuk drown, ceklis box, tanggal dan jam',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
            SizedBox(height: 8,),
            Text('Dinda hanifa', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
            SizedBox(height: 8,),
            Text('versi 4.0', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
          ],
        ),
      ),
    );
  }
}