import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

final Uri _urlfb = Uri.parse('https://web.facebook.com/EthemCool');
final Uri _urlig = Uri.parse('https://www.instagram.com/aripethem');
final Uri _urlwa = Uri.parse('https://wa.me/6283814789833');

class MediaSoisal extends StatefulWidget {
  const MediaSoisal({super.key});

  @override
  State<MediaSoisal> createState() => _MediaSoisalState();
}

class _MediaSoisalState extends State<MediaSoisal> {
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
                child: GFButton(
                  onPressed: () {
                    launchUrl(_urlfb);
                  },
                  text: "Facebook ",
                  //icon: Icon(Icons.facebook),
                  type: GFButtonType.solid,
                  blockButton: true,
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                child: GFButton(
                  onPressed: () {
                    launchUrl(_urlwa);
                  },
                  text: "Whatsapp",
                  // icon: Icon(Icons.whatsapp),
                  type: GFButtonType.solid,
                  color: Color.fromARGB(255, 9, 112, 153),
                  blockButton: true,
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                child: GFButton(
                  onPressed: () {
                    launchUrl(_urlig);
                  },
                  text: "Instragam",
                  //icon: Icon(Icons.facebook),
                  type: GFButtonType.solid,
                  blockButton: true,
                  color: Color.fromARGB(255, 217, 16, 140),
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                child: GFButton(
                  onPressed: () {},
                  text: "@arip2023",
                  // icon: Icon(Icons.),
                  type: GFButtonType.transparent,
                  blockButton: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
