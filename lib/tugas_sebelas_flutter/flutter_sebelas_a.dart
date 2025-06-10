import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application/tugas_sebelas_flutter/dbhepler_barang.dart';
import 'package:flutter_application/tugas_sebelas_flutter/model/model_barang.dart';

class InventarisBarang extends StatefulWidget {
  final Barang? barang; // untuk edit data

  InventarisBarang({this.barang});

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

    if (widget.barang != null) {
      final barang = widget.barang!;
      namaBarangController.text = barang.namaBarang;
      kodeController.text = barang.kode.toString();
      lokasiController.text = barang.lokasi;
      jumlahController.text = barang.jumlah.toString();
      _selectedDate = DateTime.tryParse(barang.tanggalPerolehan);
    }
  }

  Future<void> muatData() async {
    final data = await DbHelperBarang.getAllBarang();
    setState(() {
      daftarBarang = data;
    });
  }

  Future<void> simpanData() async {
    if (_formKey.currentState!.validate() && _selectedDate != null) {
      await DbHelperBarang.insertBarang(Barang(
        namaBarang: namaBarangController.text,
        kode: int.parse(kodeController.text),
        lokasi: lokasiController.text,
        jumlah: int.parse(jumlahController.text),
        tanggalPerolehan: DateFormat('yyyy-MM-dd').format(_selectedDate!),
      ));

      _resetForm();
      await muatData();
      _showDialog('Tersimpan', 'Data berhasil disimpan.');
    }
  }

  Future<void> updateData() async {
    if (_formKey.currentState!.validate() &&
        _selectedDate != null &&
        widget.barang != null) {
      final updatedBarang = Barang(
        id: widget.barang!.id,
        namaBarang: namaBarangController.text,
        kode: int.parse(kodeController.text),
        lokasi: lokasiController.text,
        jumlah: int.parse(jumlahController.text),
        tanggalPerolehan: DateFormat('yyyy-MM-dd').format(_selectedDate!),
      );

      await DbHelperBarang.updateBarang(updatedBarang);
      _resetForm();
      await muatData();
      _showDialog('Diperbarui', 'Data berhasil diperbarui.');
    }
  }

  void _resetForm() {
    _formKey.currentState!.reset();
    namaBarangController.clear();
    kodeController.clear();
    lokasiController.clear();
    jumlahController.clear();
    setState(() {
      _selectedDate = null;
    });
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

  void _showDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
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
            onPressed: widget.barang == null ? simpanData : updateData,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(202, 255, 4, 4),
            ),
            child: Text(
              widget.barang == null ? 'Simpan Data' : 'Update Data',
              style: TextStyle(color: Colors.white),
            ),
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
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => InventarisBarang(barang: barang),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () async {
                    await DbHelperBarang.deleteBarang(barang.id!);
                    await muatData();
                  },
                ),
              ],
            ),
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
