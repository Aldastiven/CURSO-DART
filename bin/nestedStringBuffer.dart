import 'dart:io';
import 'navegabilidad.dart';
import 'main.dart';

void nestedStringBuffer(){//EJERCICIO CON STRINGBUFFER
  print('\nDigita cualquier texto :');
  var buffer = StringBuffer();
  buffer.write(stdin.readLineSync());  
  int num = buffer.length;
  limpiar();
  print('El texto digitado es : $buffer');
  print("El tamaño del texto es : $num");

  print('Texto limpiado con clear?');
  buffer.clear();
  print(buffer.isEmpty);

  if(continuarEjercicio()){
      limpiar();
      nestedStringBuffer();
    }else{
      inicio();
    }
}