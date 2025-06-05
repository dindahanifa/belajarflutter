class Barang {
  final String namaBarang;
  final int kode;
  final String lokasi;
  final int jumlah;
  final String tanggalPerolehan; 

  Barang({
    required this.namaBarang,
    required this.kode,
    required this.lokasi,
    required this.jumlah,
    required this.tanggalPerolehan,
  });

  Map<String, dynamic> toMap() {
    return {
      'namaBarang': namaBarang,
      'kode': kode,
      'lokasi': lokasi,
      'jumlah': jumlah,
      'tanggalPerolehan': tanggalPerolehan,
    };
  }

  factory Barang.fromMap(Map<String, dynamic> map) {
    return Barang(
      namaBarang: map['namaBarang'],
      kode: map['kode'],
      lokasi: map['lokasi'],
      jumlah: map['jumlah'],
      tanggalPerolehan: map['tanggalPerolehan'].toString(),
    );
  }
}
