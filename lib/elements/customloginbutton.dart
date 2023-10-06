import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomLoginButton extends StatelessWidget {
  CustomLoginButton({super.key, required this.title, this.onPressed});
  String title = '';
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: MaterialButton(
        height: 45,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: const Color.fromARGB(246, 0, 140, 255),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
