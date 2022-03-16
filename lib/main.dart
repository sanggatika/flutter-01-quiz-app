import 'package:flutter/material.dart';
import 'package:flutter_01_quiz_app/hasil.dart';
import './kuis.dart';
import './hasil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _pertanyaan = const [
    {
      'pertanyaanText': 'What\'s Warna Favorit Kamu ?',
      'jawabanText': [
        {'text': 'Hitam', 'score': 5},
        {'text': 'Merah', 'score': 7},
        {'text': 'Hijau', 'score': 8},
        {'text': 'Putih', 'score': 3},
      ],
    },
    {
      'pertanyaanText': 'Apa Binatang Favorit Kamu ?',
      'jawabanText': [
        {'text': 'Kelinci', 'score': 2},
        {'text': 'Ular', 'score': 3},
        {'text': 'Gajah', 'score': 7},
        {'text': 'Singa', 'score': 10},
      ],
    },
    {
      'pertanyaanText': 'Siapa Instruktor Favorit Kamu ?',
      'jawabanText': [
        {'text': 'Iman', 'score': 9},
        {'text': 'Ujang', 'score': 2},
        {'text': 'Galah', 'score': 4},
        {'text': 'Singo', 'score': 6},
      ],
    },
  ];

  var _pertanyaanIndex = 0;
  var _totalScore = 0;

  void _resetKuis() {
    setState(() {
      _pertanyaanIndex = 0;
      _totalScore = 0;
    });
  }

  void _jawabanPertanyaan(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _pertanyaanIndex = _pertanyaanIndex + 1;
    });
    print(_pertanyaanIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 01 Quiz App'),
        ),
        body: _pertanyaanIndex < _pertanyaan.length
            ? Kuis(
                jawabanPertanyaan: _jawabanPertanyaan,
                pertanyaanIndex: _pertanyaanIndex,
                pertanyaan: _pertanyaan,
              )
            : Hasil(_totalScore, _resetKuis),
      ),
    );
  }
}
