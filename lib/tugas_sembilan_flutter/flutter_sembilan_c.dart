import 'package:flutter/material.dart';
import 'package:flutter_application/tugas_sembilan_flutter/model/model.dart';

class FlutterSembilanC extends StatefulWidget {
  const FlutterSembilanC({super.key});

  @override
  State<FlutterSembilanC> createState() => _FlutterSembilanCState();
}

class _FlutterSembilanCState extends State<FlutterSembilanC> {
  final List<ProductModel> kategoriProduk = [
    ProductModel(
      id: "1",
      productName: "Buku Tulis",
      productPrice: "20000",
      productImage: "assets/buku tulis.jpg",
      productDeskripsi: "Buku Tulis B5",
      ),
    ProductModel(
      id: "2",
      productName: "Buku Baca",
      productPrice: "25000",
      productImage: "assets/buku baca.png",
      productDeskripsi: "Buku Membaca Anak-anak",
      ),
    ProductModel(
      id: "3",
      productName: "Majalah",
      productPrice: "30000",
      productImage: "assets/majalah kompas.jpg",
      productDeskripsi: "Majalah koran"
      ),
    ProductModel(
      id: "4",
      productName: "Buku Sains",
      productPrice: "35000",
      productImage: "assets/sains.jpg",
      productDeskripsi: "Buku belajar sains"
      ),
    ProductModel(
      id: "5",
      productName: "Buku Dongeng",
      productPrice: "40000",
      productImage: "assets/buku bobo.jpg",
      productDeskripsi: "Majalah dongen anak-anak"
      ),
    ProductModel(
      id: "6",
      productName: "Notebook",
      productPrice: "45000",
      productImage: "assets/buku catatn harian.jpg",
      productDeskripsi: "Buku Catatan Harian"
      ),
    ProductModel(
      id: "7",
      productName: "Antologi",
      productPrice: "50000",
      productImage: "assets/buku antologi.jpg",
      productDeskripsi: "Buku Antologi berdasarkan KBBI"
      ),
    ProductModel(
      id: "8",
      productName: "Kamus",
      productPrice: "55000",
      productImage: "assets/buku kamus.jpg",
      productDeskripsi: "Buku Kamus Bahasa Inggri-Bahasa Indonesia"
      ),
    ProductModel(
      id: "9",
      productName: "Atlas",
      productPrice: "60000",
      productImage: "assets/buku atlas.jpg",
      productDeskripsi: "Majalah koran"
      ),
    ProductModel(
      id: "10",
      productName: "Buku Panduan Memasak",
      productPrice: "30000",
      productImage: "assets/buku panduan.jpg",
      productDeskripsi: "Majalah koran"
      ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Model")),
      body: ListView.builder(
        itemCount: kategoriProduk.length,
        itemBuilder: (context, index) {
          final product = kategoriProduk[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(product.productImage ?? ""),
            ),
            title: Text(product.productName ?? ""),
            subtitle: Text(product.productDeskripsi ?? ""),
            trailing: Text("Rp. ${product.productPrice}", style: TextStyle(fontSize: 15),),
          );
        },),
    );
  }
}