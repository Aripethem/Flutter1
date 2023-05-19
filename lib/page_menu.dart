import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tugas1/page_biodata.dart';

class MenuUtama extends StatefulWidget {
  const MenuUtama({super.key});

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const PageBiodata(),
              ),
            );
          },
          child: Text("My Biodata"),
        ),
      ),
    );
  }
}
