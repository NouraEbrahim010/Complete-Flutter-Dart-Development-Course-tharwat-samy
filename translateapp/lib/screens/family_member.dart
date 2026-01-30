import 'package:flutter/material.dart';
import 'package:translateapp/models/appdata.dart';
import 'package:translateapp/wigets/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Appdata> familyMembersList = const [
    Appdata(
      enName: 'father',
      jpName: 'chichi',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    Appdata(
      enName: 'mother',
      jpName: 'haha',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    Appdata(
      enName: 'son',
      jpName: 'musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    Appdata(
      enName: 'daughter',
      jpName: 'musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    Appdata(
      enName: 'older brother',
      jpName: 'ani',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/olderbrother.wav',
    ),
    Appdata(
      enName: 'older sister',
      jpName: 'ane',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/oldersister.wav',
    ),
    Appdata(
      enName: 'younger brother',
      jpName: 'otouto',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/youngerbrother.wav',
    ),
    Appdata(
      enName: 'younger sister',
      jpName: 'imouto',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/youngersister.wav',
    ),
    Appdata(
      enName: 'grandmother',
      jpName: 'sobo',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grandmother.wav',
    ),
    Appdata(
      enName: 'grandfather',
      jpName: 'sofu',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grandfather.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff528032),
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff463228),
      ),
      body: ListView.builder(
        itemCount: familyMembersList.length,
        itemBuilder: (context, index) {
          return Item(
            data: familyMembersList[index],
            imgColor: const Color(0xffFFF4D9),
            containerColor: Color(0xff528032),
          );
        },
      ),
    );
  }
}
