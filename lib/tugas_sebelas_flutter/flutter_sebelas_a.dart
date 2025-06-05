import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application/tugas_sebelas_flutter/dbhepler_barang.dart';
import 'package:flutter_application/tugas_sebelas_flutter/model/model_barang.dart';

class InventarisBarang extends StatefulWidget {
  @override
  _InventarisBarangState createState() => _InventarisBarangState();
}

class _InventarisBarangState extends State<InventarisBarang> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController namaBarangController = TextEditingController();
  final TextEditingController kodeController = TextEditingController();
  final TextEditingController lokasiController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();

  DateTime? _selectedDate;
  List<Barang> daftarBarang = [];

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

    if (_formKey.currentState!.validate() && tanggalPerolehan != null) {
      await DbHelperBarang.insertBarang(Barang(
        namaBarang: namaBarang,
        kode: kode,
        lokasi: lokasi,
        jumlah: jumlah,
        tanggalPerolehan: DateFormat('yyyy-MM-dd').format(tanggalPerolehan),
      ));

      _formKey.currentState!.reset();
      namaBarangController.clear();
      kodeController.clear();
      lokasiController.clear();
      jumlahController.clear();
      setState(() {
        _selectedDate = null;
      });

      await muatData();
      _showDialog();
    }
  }

  Future<void> _pickDate(BuildContext context) async {
    final picked = await showDatePicker(
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

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Pendataan Tersimpan'),
        content: Text(
          'Kode: ${kodeController.text}, Tersimpan'
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Tutup'),
          ),
        ],
      ),
    );
  }

  Widget _buildFormInput() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildTextField(
            controller: namaBarangController,
            label: 'Nama Barang',
            icon: Icons.inventory,
            validator: (value) =>
                value == null || value.isEmpty ? 'Nama barang tidak boleh kosong' : null,
          ),
          _buildTextField(
            controller: kodeController,
            label: 'Kode',
            icon: Icons.confirmation_number,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Kode tidak boleh kosong';
              if (int.tryParse(value) == null) return 'Kode harus berupa angka';
              return null;
            },
          ),
          _buildTextField(
            controller: lokasiController,
            label: 'Lokasi',
            icon: Icons.location_on,
            validator: (value) =>
                value == null || value.isEmpty ? 'Lokasi tidak boleh kosong' : null,
          ),
          _buildTextField(
            controller: jumlahController,
            label: 'Jumlah',
            icon: Icons.calculate,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Jumlah tidak boleh kosong';
              if (int.tryParse(value) == null) return 'Jumlah harus berupa angka';
              return null;
            },
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
                  color: _selectedDate != null ? Colors.black : Colors.grey.shade600,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: simpanData,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(202, 255, 4, 4),
            ),
            child: Text('Simpan Data', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(),
        ),
        keyboardType: keyboardType,
        validator: validator,
      ),
    );
  }

  Widget _buildBarangList() {
    return Expanded(
      child: ListView.builder(
        itemCount: daftarBarang.length,
        itemBuilder: (context, index) {
          final barang = daftarBarang[index];
          final formattedDate = DateFormat('dd MMM yyyy').format(
            DateTime.tryParse(barang.tanggalPerolehan) ?? DateTime.now(),
          );
          return ListTile(
            leading: Text('${index + 1}'),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(barang.namaBarang, style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Kode: ${barang.kode}'),
                Text('Lokasi: ${barang.lokasi}'),
                Text('Jumlah: ${barang.jumlah}'),
              ],
            ),
            subtitle: Text('Tanggal Perolehan: $formattedDate'),
          );
        },
      ),
    );
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
            _buildFormInput(),
            Divider(height: 32),
            _buildBarangList(),
          ],
        ),
      ),
    );
  }
}
