import 'package:flutter/material.dart';
import 'package:translateapp/models/appdata.dart';
import 'package:translateapp/wigets/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Appdata> numbersList = const [
    Appdata(
      enName: 'one',
      jpName: 'ichi',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Appdata(
      enName: 'two',
      jpName: 'ni',
      image: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Appdata(
      enName: 'three',
      jpName: 'san',
      image: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Appdata(
      enName: 'four',
      jpName: 'shi',
      image: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Appdata(
      enName: 'five',
      jpName: 'go',
      image: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Appdata(
      enName: 'six',
      jpName: 'roku',
      image: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Appdata(
      enName: 'seven',
      jpName: 'nana',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Appdata(
      enName: 'eight',
      jpName: 'hachi',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Appdata(
      enName: 'nine',
      jpName: 'kyu',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Appdata(
      enName: 'ten',
      jpName: 'ju',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEF9235),
      appBar: AppBar(
        title: const Text('Numbers', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff463228),
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          return Item(
            data: numbersList[index],
            imgColor: const Color(0xffFFF4D9),
            containerColor: const Color(0xffEF9235),
          );
        },
      ),
    );
  }
}
