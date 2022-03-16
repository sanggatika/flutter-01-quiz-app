import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String pertanyaanText;
  Pertanyaan(this.pertanyaanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        pertanyaanText,
        style: TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
