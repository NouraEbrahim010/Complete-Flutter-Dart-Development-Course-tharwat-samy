import 'package:flutter/material.dart';
import 'package:tunesplayerapp/models/tune.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => tune.playSound(),
        child: Container(color: tune.color, width: double.infinity),
      ),
    );
  }
}
