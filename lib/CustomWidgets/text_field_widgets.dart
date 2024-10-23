import 'package:flutter/material.dart';

import '../Utils/Constant/colors.dart';

class TextFiledWidgets extends StatelessWidget {
  const TextFiledWidgets({
    super.key, required this.hintText, required this.prefixIcon,
  });
  final String hintText;
  final IconData prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon,color: Colors.white.withOpacity(0.6)),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
        filled: true,
        fillColor: AColor.loginContainer,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.2,color: Colors.white),
            borderRadius: BorderRadius.circular(10)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.2,color: Colors.white),
            borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}
