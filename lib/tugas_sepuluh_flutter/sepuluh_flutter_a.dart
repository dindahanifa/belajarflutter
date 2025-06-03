import 'package:flutter/material.dart';
import 'package:flutter_application/tugas_sepuluh_flutter/sepuluh_flutter_b.dart';

class SepuluhFlutterA extends StatefulWidget {
  const SepuluhFlutterA({super.key});

  @override
  State<SepuluhFlutterA> createState() => _SepuluhFlutterAState();
}

class _SepuluhFlutterAState extends State<SepuluhFlutterA> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nomorHpController = TextEditingController();
  final TextEditingController _kotaDomisiliController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text('Tugas Sepuluh', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), backgroundColor: Colors.white,),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: InputDecoration(labelText: "Nama"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosonh";
                  } 
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email tidak boleh kosong";
                  } else if (!value.contains("@")) {
                    return "Email tidak valid";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nomorHpController,
                decoration: InputDecoration(labelText: "Nomor Hp"),
              ),
              TextFormField(
                controller: _kotaDomisiliController,
                decoration: InputDecoration(labelText: "Kota Domisili"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Kota Domisili wajib di isi";
                  } 
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _showDialog();
                  }
                },
                child: Text('Daftar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Pendaftaran berhasil"),
          content: Text('Email kamu: ${_emailController.text}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Tutup'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SepuluhFlutterB(
                      nama: _namaController.text,
                      email: _emailController.text,
                      nomorHp: _nomorHpController.text,
                      kotaDomisili: _kotaDomisiliController.text,
                    ),
                  ),
                );
              },
              child: Text('Lanjut'),
            ),
          ],
        );
      },
    );
  }
}