import 'package:flutter/material.dart';
import 'package:translateapp/models/appdata.dart';
import 'package:translateapp/wigets/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Appdata> phrasesList = const [
    Appdata(
      enName: 'Where are you going?',
      jpName: 'Doko ni iku no?',
      sound: 'sounds/phrases/where_are_you_going_sound.mp3',
    ),
    Appdata(
      enName: 'What is your name?',
      jpName: 'O-namae wa nandesu ka?',
      sound: 'sounds/phrases/what_is_your_name_sound.mp3',
    ),

    Appdata(
      enName: 'How are you feeling?',
      jpName: 'Go-kigen wa ikagadesu ka?',
      sound: 'sounds/phrases/how_are_you_feeling_sound.mp3',
    ),
    Appdata(
      enName: 'Are you coming?',
      jpName: 'Kimasu ka?',
      sound: 'sounds/phrases/are_you_coming_sound.mp3',
    ),
    Appdata(
      enName: 'Yes, I am coming.',
      jpName: 'Hai, kimasu.',
      sound: 'sounds/phrases/yes_im_coming_sound.mp3',
    ),
    Appdata(
      enName: 'Programming is easy.',
      jpName: 'Puroguramingu wa kantan desu.',
      sound: "sounds/phrases/programming_is_easy_sound.mp3",
    ),
    Appdata(
      enName: 'I love programming.',
      jpName: 'Puroguramingu ga daisuki desu.',
      sound: 'sounds/phrases/i_love_programming_sound.mp3',
    ),
    Appdata(
      enName: 'I love anime.',
      jpName: 'Anime ga daisuki desu.',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Appdata(
      enName: 'Don\'t forget to subscribe.',
      jpName: 'Tsubscribe o wasurenaide kudasai.',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff48A5CB),
      appBar: AppBar(
        title: const Text('Phrases', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff463228),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return Item(
            data: phrasesList[index],
            imgColor: const Color(0xffFFF4D9),
            containerColor: Color(0xff48A5CB),
          );
        },
      ),
    );
  }
}
