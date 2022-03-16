import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int hasilScore;
  final VoidCallback resetHandler;

  Hasil(this.hasilScore, this.resetHandler);

  String get hasilPhrase {
    String hasilText = "You Did It ...";

    if (hasilScore <= 8) {
      hasilText = 'You are awesome and innocent!';
    } else if (hasilScore <= 12) {
      hasilText = 'Pretty likeable!';
    } else if (hasilScore <= 16) {
      hasilText = 'You are ... strange?!';
    } else {
      hasilText = 'You are so bad!';
    }
    return hasilText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            hasilPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
