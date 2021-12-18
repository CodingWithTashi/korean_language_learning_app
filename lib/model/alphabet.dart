import 'package:equatable/equatable.dart';

class Alphabet extends Equatable {
  String englishPronoun;
  String alphabetName;
  Alphabet({required this.englishPronoun, required this.alphabetName});

  @override
  List<Object?> get props => [englishPronoun, alphabetName];
}
