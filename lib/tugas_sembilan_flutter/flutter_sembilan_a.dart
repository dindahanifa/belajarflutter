import 'package:flutter/material.dart';

class FlutterSembilan extends StatefulWidget {
  const FlutterSembilan({super.key});

  @override
  State<FlutterSembilan> createState() => _FlutterSembilanState();
}

class _FlutterSembilanState extends State<FlutterSembilan> {
  final List<String> kategoriProduk = [
    "Buah-buahan",
    "Sayuran",
    "Elektronik",
    "Pakaian Pria",
    "Pakaian Wanita",
    "Alat Tulis Kantor",
    "Buku & Majalah",
    "Peralatan Dapur",
    "Makanan Ringan",
    "Minuman",
    "Maianan Anak",
    "Peralatan Olahraga",
    "Produk Kesehatan",
    "Kosmetik",
    "Obat-Obatan",
    "Aksesoris Mobil",
    "Perabotan rumah",
    "Sepatu dan Sandal",
    "Barang Bekas",
    "Voucer & Tiket",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Produk'),),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            itemCount: kategoriProduk.length,
            itemBuilder: (context, index) {
              return Text("${index + 1}. ${kategoriProduk[index]}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
            },))
        ],
      ),
    );
  }
}