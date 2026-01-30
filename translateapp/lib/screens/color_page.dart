import 'package:flutter/material.dart';
import 'package:translateapp/models/appdata.dart';
import 'package:translateapp/wigets/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Appdata> colorsList = const [
    Appdata(
      enName: 'red',
      jpName: 'aka',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    Appdata(
      enName: 'green',
      jpName: 'midori',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    Appdata(
      enName: 'brown',
      jpName: 'chairo',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    Appdata(
      enName: 'gray',
      jpName: 'haiiro',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    Appdata(
      enName: 'black',
      jpName: 'kuro',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    Appdata(
      enName: 'white',
      jpName: 'shiro',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    Appdata(
      enName: 'dusty yellow',
      jpName: 'hokori ppoi kiiro',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dustyyellow.mp3',
    ),
    Appdata(
      enName: 'yellow',
      jpName: ' kiiro',
      image: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7C3FA0),
      appBar: AppBar(
        title: const Text('Colors', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff463228),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return Item(
            data: colorsList[index],
            imgColor: const Color(0xffFFF4D9),
            containerColor: Color(0xff7C3FA0),
          );
        },
      ),
    );
  }
}
