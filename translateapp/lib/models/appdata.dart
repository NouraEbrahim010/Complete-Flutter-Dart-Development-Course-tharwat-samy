import 'package:audioplayers/audioplayers.dart';

class Appdata {
  final String? image;
  final String enName;
  final String jpName;
  final String sound;
  const Appdata({
    this.image,
    required this.enName,
    required this.jpName,
    required this.sound,
  });
  void playsound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
