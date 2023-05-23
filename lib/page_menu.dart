import 'package:flutter/material.dart';
import './page_biodata.dart' as PageBiodata;
import './page_medsos.dart' as MediaSoisal;

class MenuUtama extends StatefulWidget {
  const MenuUtama({super.key});

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 10, vsync: this);
    void initState() {
      super.initState();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: BackButton(),
        backgroundColor: Colors.blue,
        toolbarHeight: 30,
        title: const Text("Projek Tugas Pertama Bootcam Flutter"),
        bottom: TabBar(controller: controller, tabs: <Widget>[
          const Tab(
            icon: Icon(Icons.people_alt_sharp),
            text: "Profil",
          ),
          const Tab(
            icon: Icon(Icons.mediation_outlined),
            text: "Media Sosial",
          ),
        ]),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          const PageBiodata.PageBiodata(),
          const MediaSoisal.MediaSoisal(),
        ],
      ),
      // bottomNavigationBar: new Material(
      //   color: Colors.blue,
      //   child: new TabBar(
      //     controller: controller,
      //     tabs: <Widget>[
      //       new Tab(
      //         height: 25,
      //         icon: new Icon(Icons.people_alt_sharp),
      //       ),
      //       new Tab(
      //         height: 25,
      //         icon: new Icon(
      //           Icons.mediation_outlined,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
