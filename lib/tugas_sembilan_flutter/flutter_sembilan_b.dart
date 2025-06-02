import 'package:flutter/material.dart';
import 'package:flutter_application/tugas_sembilan_flutter/flutter_sembilan_c.dart';
class FlutterSembilanB extends StatefulWidget {
  const FlutterSembilanB({super.key});

  @override
  State<FlutterSembilanB> createState() => _FlutterSembilanBState();
}

class _FlutterSembilanBState extends State<FlutterSembilanB> {
  final List<Map<String, dynamic>> kategoriProduk = [
    {
      'product' : 'Buah Apel',
      'Price' : 20000,
      'image' : 'assets/buah.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Sayuran',
      'Price' : 25000,
      'image' : 'assets/sayur.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Television',
      'Price' : 1000000,
      'image' : 'assets/tv.png',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Celana',
      'Price' : 50000,
      'image' : 'assets/celana.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Gaun',
      'Price' : 50000,
      'image' : 'assets/dress.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Buku Tulis',
      'Price' : 25000,
      'image' : 'assets/tulis.png',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Majalah',
      'Price' : 25000,
      'image' : 'assets/majalahbaca.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Gunting',
      'Price' : 25000,
      'image' : 'assets/gunting.png',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Snack',
      'Price' : 25000,
      'image' : 'assets/snack.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Minuman Kaleng',
      'Price' : 25000,
      'image' : 'assets/minuman kaleng.png',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Boneka',
      'Price' : 40000,
      'image' : 'assets/boneka.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Bulu Tangkis',
      'Price' : 40000,
      'image' : 'assets/raket.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Obat Flu',
      'Price' : 4000,
      'image' : 'assets/obat.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Sunscreen',
      'Price' : 40000,
      'image' : 'assets/sunscreen.png',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Alat Suntik',
      'Price' : 40000,
      'image' : 'assets/alat suntik.png',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Aksesori Mobil',
      'Price' : 40000,
      'image' : 'assets/mobil.png',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Sofa Ruang Tamu',
      'Price' : 4000000,
      'image' : 'assets/sofa.png',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Sepatu',
      'Price' : 40000,
      'image' : 'assets/sepatu.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Barang bekas',
      'Price' : 4000,
      'image' : 'assets/kaleng.jpg',
      'route' : FlutterSembilanC(),
    },
    {
      'product' : 'Tiket Pesawat',
      'Price' : 400000,
      'image' : 'assets/tiket.jpg',
      'route' : FlutterSembilanC(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List in Map'),
      ),
      body: ListView.builder(
        itemCount: kategoriProduk.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${index + 1}.", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),),
            title: Text("${kategoriProduk[index]["product"]}"),
            subtitle: Text("Price : Rp. ${kategoriProduk[index]["Price"]}"),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> kategoriProduk[index]["route"],));
              }, 
              icon: Image.asset(kategoriProduk[index]["image"], width: 50, height: 50)),
          );
        },),
    );
  }
}