import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String pertanyaanText;
  const Pertanyaan(this.pertanyaanText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        pertanyaanText,
        style: const TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
