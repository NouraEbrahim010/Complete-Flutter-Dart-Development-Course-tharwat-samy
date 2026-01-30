import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

class TuneModel {
  final String sound;
  final Color color;

  const TuneModel({required this.sound, required this.color});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
