class Barang {
  final int? id;
  final String namaBarang;
  final int kode;
  final String lokasi;
  final int jumlah;
  final String tanggalPerolehan;

  Barang({
    this.id,
    required this.namaBarang,
    required this.kode,
    required this.lokasi,
    required this.jumlah,
    required this.tanggalPerolehan,
  });

  Map<String, dynamic> toMap() {
    final map = {
      'namaBarang': namaBarang,
      'kode': kode,
      'lokasi': lokasi,
      'jumlah': jumlah,
      'tanggalPerolehan': tanggalPerolehan,
    };

    if (id != null) {
      id: map['id'];
    }
    return map;
  }

  factory Barang.fromMap(Map<String, dynamic> map) {
    return Barang(
      id: map['id'],
      namaBarang: map['namaBarang'],
      kode: map['kode'],
      lokasi: map['lokasi'],
      jumlah: map['jumlah'],
      tanggalPerolehan: map['tanggalPerolehan'].toString(),
    );
  }
}
