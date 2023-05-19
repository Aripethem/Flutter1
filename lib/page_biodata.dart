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
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.network(
              'https://avatars.githubusercontent.com/u/57038754?s=400&u=a2331c789bd6f76cab7a566519eb9c9ef130f80a&v=4'),
          SizedBox(height: 16),
          Text("Arip"),
          SizedBox(height: 16),
          Text("Rekayasa Perangkat Lunak"),
        ],
      )),
    );
  }
}
