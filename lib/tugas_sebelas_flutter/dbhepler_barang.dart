import 'package:flutter_application/tugas_sebelas_flutter/model/model_barang.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelperBarang {
  static Future<Database> db() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'barang.db'),
      onCreate: (db, version) {
        return db.execute(
          '''
          CREATE TABLE barang(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            namaBarang TEXT,
            kode INTEGER,
            lokasi TEXT,
            jumlah INTEGER,
            tanggalPerolehan TEXT
          )
          ''',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertBarang(Barang barang) async {
    final dbClient = await db();
    await dbClient.insert(
      'barang',
      barang.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Barang>> getAllBarang() async {
    final dbClient = await db();
    final List<Map<String, dynamic>> maps = await dbClient.query('barang');

    return List.generate(
      maps.length,
      (i) => Barang.fromMap(maps[i]),
    );
  }

  static Future<void> updateBarang(Barang barang) async {
    final dbClient = await db();
    await dbClient.update(
      'barang',
      barang.toMap(),
      where: 'id = ?',
      whereArgs: [barang.id],
    );
  }

  static Future<void> deleteBarang(int id) async {
    final dbClient = await db();
    await dbClient.delete(
      'barang',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
