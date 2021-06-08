import 'package:flutter/material.dart';

class halamanmahasiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text("Data Anggota Kelompok")
        ),
        body: Center(
        child: ListView(
            children: <Widget>[
               new Text('DATA MAHASISWA', style: TextStyle(fontSize: 32)),
          const Divider(
            height: 2.0,
          ),
          new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Miftakhul Jannah'),
            subtitle: const Text('2018020071'),
          ),
         new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Qoiri Anam'),
            subtitle: const Text('2018020097'),
          ),
          new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Rikardo Zalukhu'),
            subtitle: const Text('2018020916'),
          ),
          new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Rina Aulia'),
            subtitle: const Text('2018020153'),
          ),
         RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali")
          ),
            ],
         ),
        ),
    );
  }
}


