import 'dart:html';

import 'package:flutter/material.dart';

class PageBiodata extends StatefulWidget {
  const PageBiodata({super.key});

  @override
  State<PageBiodata> createState() => _PageBiodataState();
}

class _PageBiodataState extends State<PageBiodata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/arip.png')),
              ),
              SizedBox(height: 16.0),
              Card(
                child: ListTile(
                  title: Text('Nama '),
                  subtitle: Text('Arip'),
                  leading: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                child: ListTile(
                  title: Text('Pekerjaan'),
                  subtitle: Text('Teacher'),
                  leading: Icon(Icons.badge),
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                child: ListTile(
                  title: Text('Instansi'),
                  subtitle: Text('SMKN 4 Tasikmalaya'),
                  leading: Icon(Icons.school),
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                child: ListTile(
                  title: Text('Tujuan Ikut Bootcam Flutter'),
                  subtitle: Text('Untuk Diamalkan Ke Siswa'),
                  leading: Icon(Icons.book),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
