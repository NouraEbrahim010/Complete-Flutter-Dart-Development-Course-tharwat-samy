import 'package:flutter/material.dart';
import 'package:translateapp/screens/color_page.dart';
import 'package:translateapp/screens/family_member.dart';
import 'package:translateapp/screens/numbers_page.dart';
import 'package:translateapp/screens/phrases_page.dart';
import 'package:translateapp/wigets/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        title: const Text(
          'Tuko',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff463228),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Color(0xffEf9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumbersPage()),
              );
            },
          ),
          Category(
            text: 'Family Members',
            color: Color(0xff528032),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FamilyMembersPage()),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: Color(0xff7C3FA0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColorsPage()),
              );
            },
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff48A5CB),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhrasesPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
