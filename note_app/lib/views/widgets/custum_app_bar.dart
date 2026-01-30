import 'package:flutter/material.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  final String title;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: Icon(icon, size: 30),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white.withAlpha((.05 * 255).toInt()),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
//stateless widget must be immutable so all properties must be final
// ehwn we remove const that will make app less efficient because flutter cant optimize the widget tree