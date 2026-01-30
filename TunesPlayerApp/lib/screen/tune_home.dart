import 'package:flutter/material.dart';
import 'package:tunesplayerapp/models/tune.dart';
import 'package:tunesplayerapp/widget.dart/tune_item.dart';

class TuneHome extends StatelessWidget {
  const TuneHome({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        elevation: 0,
        title: Center(
          child: const Text(
            'Flutter Tune',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
        /*   2 ways to display the list of TuneItem  
         for (var tune in tunes) TuneItem(tune: tune),
          tune.map((e) => TuneItem(tune: e)).toList(),
          */
      ),
    );
  }
}
