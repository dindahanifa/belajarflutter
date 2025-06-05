import 'package:flutter/material.dart';
import 'package:flutter_application/tugas_sebelas_flutter/dbhepler_barang.dart';
import 'package:flutter_application/tugas_sebelas_flutter/model/model_barang.dart';
import 'package:intl/intl.dart';

class InventarisBarang extends StatefulWidget {
  @override
  _InventarisBarangState createState() => _InventarisBarangState();
}

class _InventarisBarangState extends State<InventarisBarang> {
  final TextEditingController namaBarangController = TextEditingController();
  final TextEditingController kodeController = TextEditingController();
  final TextEditingController lokasiController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();

  List<Barang> daftarBarang = [];

  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DbHelperBarang.getAllBarang();
    setState(() {
      daftarBarang = data;
    });
  }

  Future<void> simpanData() async {
    final namaBarang = namaBarangController.text;
    final kode = int.tryParse(kodeController.text) ?? 0;
    final lokasi = lokasiController.text;
    final jumlah = int.tryParse(jumlahController.text) ?? 0;
    final tanggalPerolehan = _selectedDate;

    if (namaBarang.isNotEmpty &&
        kode > 0 &&
        lokasi.isNotEmpty &&
        jumlah > 0 &&
        tanggalPerolehan != null) {
      await DbHelperBarang.insertBarang(Barang(
        namaBarang: namaBarang,
        kode: kode,
        lokasi: lokasi,
        jumlah: jumlah,
        tanggalPerolehan: DateFormat('yyyy-MM-dd').format(tanggalPerolehan),
      ));

      namaBarangController.clear();
      kodeController.clear();
      lokasiController.clear();
      jumlahController.clear();
      setState(() {
        _selectedDate = null;
      });

      await muatData();
    }
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Image.asset('assets/jnttiga.png', fit: BoxFit.cover),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: namaBarangController,
              decoration: InputDecoration(
                labelText: 'Nama Barang',
                prefixIcon: Icon(Icons.inventory),
              ),
            ),
            TextField(
              controller: kodeController,
              decoration: InputDecoration(
                labelText: 'Kode',
                prefixIcon: Icon(Icons.confirmation_number),
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: lokasiController,
              decoration: InputDecoration(
                labelText: 'Lokasi',
                prefixIcon: Icon(Icons.location_on),
              ),
            ),
            TextField(
              controller: jumlahController,
              decoration: InputDecoration(
                labelText: 'Jumlah',
                prefixIcon: Icon(Icons.calculate),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () => _pickDate(context),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Tanggal Perolehan',
                  prefixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  _selectedDate != null
                      ? DateFormat('dd MMM yyyy').format(_selectedDate!)
                      : 'Pilih Tanggal',
                  style: TextStyle(
                    color: _selectedDate != null
                        ? Colors.black
                        : Colors.grey.shade600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: simpanData,
              child: Text('Simpan Data', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(202, 255, 4, 4),
              ),
            ),
            Divider(height: 32),
            Expanded(
              child: ListView.builder(
                itemCount: daftarBarang.length,
                itemBuilder: (context, index) {
                  final barang = daftarBarang[index];
                  final formattedDate = DateFormat('dd MMM yyyy').format(
                    DateTime.tryParse(barang.tanggalPerolehan) ??
                        DateTime.now(),
                  );
                  return ListTile(
                    leading: Text('${index + 1}'),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(barang.namaBarang),
                        Text('Kode: ${barang.kode}'),
                        Text('Lokasi: ${barang.lokasi}'),
                        Text('Jumlah: ${barang.jumlah}'),
                      ],
                    ),
                    subtitle: Text('Tanggal Perolehan: $formattedDate'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

