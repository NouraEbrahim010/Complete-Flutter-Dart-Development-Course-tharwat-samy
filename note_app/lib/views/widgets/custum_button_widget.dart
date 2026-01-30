import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustumButtonWidget extends StatelessWidget {
  const CustumButtonWidget({
    super.key,
    required this.onPressed,
    this.isloading = false,
  });
  final void Function()? onPressed;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Constant.KPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          minimumSize: Size(MediaQuery.of(context).size.width, 50),
        ),
        child: isloading
            ? CircularProgressIndicator(color: Colors.black)
            : Text(
                'Add Note',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
