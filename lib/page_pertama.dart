import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tugas1/page_menu.dart';

class PagePertama extends StatefulWidget {
  const PagePertama({super.key});

  @override
  State<PagePertama> createState() => _PagePertamaState();
}

class _PagePertamaState extends State<PagePertama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        shadowColor: Colors.blue,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Projek Tugas Pertama Bootcam Flutter"),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i0.wp.com/dianisa.com/wp-content/uploads/2022/12/5.-Wallpaper-HD-Drag-Sport-Car-Keren.jpg?w=720&ssl=1'),
                fit: BoxFit.cover),
          ),
          child: const Center(
            child: Text(
              'Selamat Datang',
              style: TextStyle(color: Colors.white),
            ),
          )),
      floatingActionButton: FloatingActionButton(
          tooltip: "Biodata Arip",
          elevation: 0.0,
          child: const Icon(Icons.ads_click),
          backgroundColor: Colors.blue,
          splashColor: Colors.yellow,
          hoverColor: Colors.red,
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const MenuUtama(),
              ),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
