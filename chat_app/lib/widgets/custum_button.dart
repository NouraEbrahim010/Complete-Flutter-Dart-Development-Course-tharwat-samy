import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {
  CustumButton({super.key, required this.label, required this.onTap});
  String label;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,

        child: Center(child: Text(label)),
      ),
    );
  }
}
