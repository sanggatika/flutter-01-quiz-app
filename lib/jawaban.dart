import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final VoidCallback selectHandler;
  final String jawabanText;

  Jawaban(this.selectHandler, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(jawabanText),
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.red, // background
          onPrimary: Colors.yellow, // foreground
        ),
      ),
    );
  }
}
