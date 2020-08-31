import 'dart:io';
import 'navegabilidad.dart';

main(List<String> args) {
  inicio();
}

void inicio(){
  print(pregunta());
  navegation(stdin.readLineSync());
}

