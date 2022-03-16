import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';

class Kuis extends StatelessWidget {
  final List<Map<String, Object>> pertanyaan;
  final int pertanyaanIndex;
  final Function jawabanPertanyaan;

  const Kuis(
      {Key? key,
      required this.pertanyaan,
      required this.pertanyaanIndex,
      required this.jawabanPertanyaan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(
          pertanyaan[pertanyaanIndex]['pertanyaanText'] as String,
        ),
        ...(pertanyaan[pertanyaanIndex]['jawabanText']
                as List<Map<String, Object>>)
            .map((jawabanText) {
          return Jawaban(() => jawabanPertanyaan(jawabanText['score']),
              jawabanText['text'] as String);
        }).toList(),
      ],
    );
  }
}
