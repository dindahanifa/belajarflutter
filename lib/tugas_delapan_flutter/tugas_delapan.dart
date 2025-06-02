import 'package:flutter/material.dart';
import 'package:flutter_application/tugas_delapan_flutter/delapan_flutter_b.dart';
import 'package:flutter_application/tugas_tujuh/tugas_tujuh_flutter.dart';

class FlutterDelapan extends StatefulWidget {
  const FlutterDelapan({super.key});

  @override
  State<FlutterDelapan> createState() => _FlutterDelapanState();
}

class _FlutterDelapanState extends State<FlutterDelapan> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    TugasTujuhFlutter(),
    DelapanFlutterB(),

  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    print("Halaman Saat Ini : $_selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
          print("Halaman Saat Ini : $_selectedIndex");
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.description), label: "deskripsi"),
        ],
        ),
    );
  }
}