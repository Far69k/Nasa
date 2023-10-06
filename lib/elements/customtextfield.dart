import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  const customTextField(
      {super.key, this.controller, this.hint, this.obscured, this.icon});
  final TextEditingController? controller;
  final String? hint;
  final bool? obscured;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscured!,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide:
                  const BorderSide(color: Color.fromARGB(246, 0, 140, 255))),
          icon: Icon(
            icon,
            color: const Color.fromARGB(246, 0, 140, 255),
          ),
          hintText: hint,
          filled: true,
          fillColor: const Color.fromARGB(255, 245, 243, 243),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
          )),
    );
  }
}
