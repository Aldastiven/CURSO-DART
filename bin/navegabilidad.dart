import 'dart:io';
import 'nestedString.dart';
import 'nestedStringBuffer.dart';
import 'nestedListas.dart';
import 'nestedListasAvanzadas.dart';

String pregunta(){//PREGUNTA LA NAVEGACIÓN DEL PROGRAMA (MENÚ)
    limpiar();
    return 'Selecciona el ejercico a realizar : \n 1 -> string \n 2 -> stringBuffer \n 3 -> Listas \n 4 -> Listas Avanzadas \nPresiona Cualquier otra tecla para salir';
}

void navegation(String inputText){//NAVEGACION SOBRE LOS EJERCICIOS
  limpiar();
  switch(inputText){
    case '1':
      mensajeNavegation('String');
      nestedString();  
      break;
    case '2': 
      mensajeNavegation('StringBuffer');
      nestedStringBuffer();
      break;
    case '3':
      mensajeNavegation('Listas');
      nestedListas();
      break;
    case '4':
      mensajeNavegation('Listas Avanzadas');
      nestedListasAvanzadas();  
      break;
  }
}

void mensajeNavegation(String navegation){
  print('          >>>Ejecicio '+navegation+'<<<              ');
}

bool continuarEjercicio(){
  print('¿Deseas continuar el ejercicio?...y|n');
  String d = stdin.readLineSync();
  bool v = d == "y" || d == "n";
  bool validar = false;
  if(v){
    validar = d == "y";
  }else {
    limpiar();
    print('\nRespuesta no valida debes digitar "y" para continuar, "n" para salir del ejercicio\n');
    continuarEjercicio();
  }
  return validar;
}

void limpiar(){//LIMPIAR CONSOLA
  print("\x1B[2J\x1B[0;0H");
}