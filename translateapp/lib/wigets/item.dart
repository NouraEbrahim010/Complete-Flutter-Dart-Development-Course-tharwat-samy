import 'package:flutter/material.dart';
import 'package:translateapp/models/appdata.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  Item({
    super.key,
    required this.data,
    required this.imgColor,
    required this.containerColor,
  });
  final Appdata data;
  Color? imgColor;
  Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: containerColor,
      child: Row(
        children: [
          Container(
            color: imgColor,
            child: data.image != null ? Image.asset(data.image!) : null,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              children: [
                Text(
                  data.jpName,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  data.enName,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () => data.playsound(),
              icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
