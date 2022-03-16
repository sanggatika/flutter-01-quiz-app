import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';

class Kuis extends StatelessWidget {
  final List<Map<String, Object>> pertanyaan;
  final int pertanyaanIndex;
  final Function jawabanPertanyaan;

  Kuis(
      {required this.pertanyaan,
      required this.pertanyaanIndex,
      required this.jawabanPertanyaan});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(
          pertanyaan[pertanyaanIndex]['pertanyaanText'] as String,
        ),
        ...(pertanyaan[pertanyaanIndex]['jawabanText']
                as List<Map<String, Object>>)
            .map((jawaban_text) {
          return Jawaban(() => jawabanPertanyaan(jawaban_text['score']),
              jawaban_text['text'] as String);
        }).toList(),
      ],
    );
  }
}
