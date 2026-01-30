import 'package:flutter/material.dart';

class CustumTextFormField extends StatelessWidget {
  CustumTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.onChanged,
    this.obscure = false,
  });
  String? labelText;
  String? hintText;
  Function(String)? onChanged;
  bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
