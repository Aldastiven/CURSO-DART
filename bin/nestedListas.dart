import 'dart:io';
import 'navegabilidad.dart';
import 'main.dart';

List<String> ListaPaises = ['Colombia','Venezuela', 'Nicaragua','Puerto Rico','Argentina'];

void nestedListas(){//EJERCICIO CON LISTAS
  acciones();
}

void acciones(){
  print('Exite una lista de paises, que deseas hacer?\n1.Consultar\n2.Agregar un nuevo pais\n3.Eliminar un pais');  
  String opcionElegida = stdin.readLineSync();
  bool v = opcionElegida == "1" || opcionElegida == "2" || opcionElegida == "3";

  if(v){
    switch (opcionElegida){
      case '1':
          limpiar();
          consultarLista();
        break;
      case '2':
          limpiar();
          agregarLista();  
        break;
    }
  }else{
      limpiar();
      print('Acción no valida');
      acciones();
  }
}

void consultarLista(){
  for(String d in ListaPaises){
    int n = ListaPaises.indexOf(d)+1;
    print('$n)'+d);
  }

  if(continuarEjercicio()){
    limpiar();
    nestedListas();
  }else{
    limpiar();
    inicio();
  }
}

void agregarLista(){

  print('Digita un pais');
  String nuevoPais = stdin.readLineSync();

  bool v = false;
  for(String pais in ListaPaises){
    if(pais == nuevoPais){
      v = true;
      break;
    }
  }

  if(v){
    limpiar();
    print("El pais $nuevoPais ya existe en la base.");
  }else{
    ListaPaises.add(nuevoPais);
    print("Agregado con exito a la base.");
  }

  print(ListaPaises);
}