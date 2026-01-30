import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustumTextField extends StatelessWidget {
  const CustumTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      cursorColor: Constant.KPrimaryColor,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Constant.KPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: Constant.KPrimaryColor),
        contentPadding: const EdgeInsets.all(16.0),
      ),
      style: const TextStyle(color: Colors.white),
      maxLines: maxLines,
    );
  }

  OutlineInputBorder buildBorder({color = Colors.white}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
