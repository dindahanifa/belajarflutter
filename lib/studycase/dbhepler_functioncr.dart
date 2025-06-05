import 'package:flutter_application/pertemuan_16/database/db_helper.dart';
import 'package:flutter_application/studycase/model/siswa_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelperSiswa
 {
  static Future<Database> db() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'siswa.db'),
      onCreate: (db, version){
        return db.execute(
          'CREATE TABLE siswa(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, umur INTEGER)',
        );
      },
      version: 1,
    );
  }

static Future<void> insertSiswa(Siswa siswa) async {
  final db = await DbHelperSiswa
  .db();
  await db.insert(
    'siswa',
    siswa.toMap(),
  );
}
static Future<List<Siswa>> getAllSiswa() async {
  final db = await DbHelperSiswa
  .db();
  final List<Map<String, dynamic>> maps = await db.query('siswa');
  return List.generate(maps.length, (i) {
    return Siswa.fromMap(maps[i]);
  });
}
 }