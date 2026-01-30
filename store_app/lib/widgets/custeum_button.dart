import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {
  CustumButton({super.key, required this.label, this.ontap});
  String label;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,

        child: Center(
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
