import 'package:flutter/material.dart';
import 'package:kelompok_6sia10/databasehelper.dart';

class halamansqflite extends StatelessWidget {
  final DBHelper database = DBHelper();
  final TextEditingController txtnama = new TextEditingController();
  final TextEditingController txtnirm = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text("Tambah Data Mahasiswa"),
      ),
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          TextField(
            controller: txtnama,
            decoration: InputDecoration(labelText: 'Nama mahasiswa'),
          ),
          TextField(
            controller: txtnirm,
            decoration: InputDecoration(labelText: 'NIRM'),
          ),
          SizedBox(height: 50),
          ElevatedButton(onPressed: _onTambah, child: Text('Tambah')),
          ElevatedButton(onPressed: _onTampil, child: Text('Menampilkan Data')),
          RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali")
          ),
        ],
      ),
    );
  }

  void _onTambah() async {
    database.db;
    await database.tambahmahasiswa(
        {'Nama Mahasiswa': txtnama.text, 'NIRM': int.parse(txtnirm.text)});
    print('Data berhasil disimpan');
  }

  void _onTampil() async {
    print(await database.datamahasiswa());
  }
}
