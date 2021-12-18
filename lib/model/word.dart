import 'package:flutter/material.dart';

class Word {
  String english;
  String koreanWord;
  String englishSound;
  String? audioUrl;
  String assetPath;
  AnimationController? animationController;

  Word(
      {required this.english,
      required this.koreanWord,
      this.audioUrl,
      required this.assetPath,
      required this.englishSound,
      this.animationController});
}
