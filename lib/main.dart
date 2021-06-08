import 'package:flutter/material.dart';
import 'package:kelompok_6sia10/halamanmahasiswa.dart';
import 'package:kelompok_6sia10/halamansqflite.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelompok 6 SIA 10',
      theme: ThemeData(
      
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Menu Utama'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text ("Kelompok 6 SIA 10"),
      ),
      body: Center(
        child: ListView(
            children: <Widget>[
              new Text('MENU UTAMA', style: TextStyle(fontSize: 32)),
          const Divider(
            height: 2.0,
          ),
          new ListTile(
            leading: const Icon(Icons.account_balance_outlined),
            title: const Text('STMIK TRIGUNA DHARMA MEDAN'),
            subtitle: const Text('jalan A.H Nasution'),
          ),
          RaisedButton(
          child: Text("Data Mahasiswa"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => halamanmahasiswa())
            );
          },
        ),
        RaisedButton(
          child: Text("halaman program SQFLITE"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => halamansqflite())
            );
          },
        ),
      ],
    ),
    ),
    );
  }
}