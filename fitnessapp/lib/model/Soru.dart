import 'package:fitnessapp/model/Program.dart';

class SoruModel {
  String soru;
  bool Function(ProgramModel P) yesFunction;
  bool Function(ProgramModel P) noFunction;

  SoruModel({
    required this.soru,
    required this.yesFunction,
    required this.noFunction,
  });
}
