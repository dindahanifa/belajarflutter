import 'package:flutter/material.dart';
import 'package:flutter_application/tugas_tujuh/flutter_tujuh_a.dart';
import 'package:flutter_application/tugas_tujuh/flutter_tujuh_b.dart';
import 'package:flutter_application/tugas_tujuh/flutter_tujuh_c.dart';
import 'package:flutter_application/tugas_tujuh/flutter_tujuh_d.dart';
import 'package:flutter_application/tugas_tujuh/flutter_tujuh_e.dart';


class TugasTujuhFlutter extends StatefulWidget {
  const TugasTujuhFlutter({super.key});

  @override
  State<TugasTujuhFlutter> createState() => _TugasTujuhFlutterState();
}

class _TugasTujuhFlutterState extends State<TugasTujuhFlutter> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
   FlutterTujuhA(),
   FlutterTujuhB(),
   FlutterTujuhC(),
   FlutterTujuhD(),
   FlutterTujuhE(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print("Halaman saat ini : $_selectedIndex");
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tugas Flutter Tujuh', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ ClipOval(child: Container(width: 80, height: 80, decoration: BoxDecoration(color: Color(0xff727D73),),
                ), 
                ),
                  SizedBox(height: 5,),
                  Text('dinda hanifa', style: TextStyle(fontSize: 16)),
                  Text('dinda.h33@gmail.com', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_box, color: Colors.black),
              title: Text('Check Box', style: TextStyle(fontSize: 20)),
              onTap: () {
                _onItemTapped(0); Navigator.pop(
                  context
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.switch_account_rounded, color: Colors.black,),
              title: Text('Switch', style: TextStyle(fontSize: 20)),
              onTap: () {
                _onItemTapped(1); Navigator.pop(
                  context
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle, color: Colors.black,),
              title: Text('Drop Down', style: TextStyle(fontSize: 20)),
              onTap: () {
                _onItemTapped(2); Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_month, color: Colors.black,),
              title: Text('Tanggal', style: TextStyle(fontSize: 20)),
              onTap: () {
                _onItemTapped(3); Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.alarm, color: Colors.black,),
              title: Text('Jam', style: TextStyle(fontSize: 20)),
              onTap: () {
                _onItemTapped(4); Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
 
}
