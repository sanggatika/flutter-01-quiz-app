import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final VoidCallback selectHandler;
  final String jawabanText;

  const Jawaban(this.selectHandler, this.jawabanText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
