import 'package:flutter/material.dart';
import 'quote.dart';

class MatkulPage extends StatefulWidget {
  @override
  _MatkulPage createState() => _MatkulPage();
}

class _MatkulPage extends State<MatkulPage> {
  final List<Map<String, dynamic>> matkuls = [
    {'matkul': 'Pemrograman Mobile', 'dosen': 'Pak Hario'},
    {'matkul': 'Pengukuran Kinerja & Evaluasi SI', 'dosen': 'Bu Vina'},
    {'matkul': 'Citra Digital', 'dosen': 'Pak Amin'},
    {'matkul': 'Manajemen Pengadaan dan Investasi TI', 'dosen': 'Pak Amin'},
    {'matkul': 'Konstruksi dan Pengujian PL', 'dosen': 'Bu Islamiyah'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Mata Kuliah'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: matkuls.length,
                  itemBuilder: (BuildContext context, int index) {
                    final matkul = matkuls[index];
                    return ListTile(
                      title: Text(
                        matkul['matkul'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      subtitle: Text(
                        'Dosen Pengampu: ${matkul['dosen']}',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14.0,
                        ),
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                child: Text('Quote'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuotePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
