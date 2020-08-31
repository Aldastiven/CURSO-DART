import 'dart:io';
import 'main.dart';
import 'navegabilidad.dart';

void nestedString() {//EJERCICIO CON STRING
    print("ingresa un correo valido ej. emailejemplo123@email.com \n");
    
    String correo = stdin.readLineSync();//elimina los espacios del texto
    var contains = correo.contains('@') && correo.endsWith('.com'); //devuelve true si el correo contiene "@" o ".com"
    print(contains ? '\nCorreo valido\n' : '\nCorreo invalido\n');

    if(contains){
      print('\nTodo en minusculas : '+correo.toLowerCase());//devuelve texto en minusculas
      print('\nTodo en mayusculas : '+correo.toUpperCase()+'\n');//devuelve texto en mayusculas
    }

    if(continuarEjercicio()){
      limpiar();
      nestedString();
    }else{
      inicio();
    }

}