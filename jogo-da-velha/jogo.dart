import 'dart:io';
import 'partida.dart';

class Jogo {

  void jogar(){
    Partida partida = new Partida();
    partida.pegaProximoCaractere();

    print('Deseja continuar jogando? \n1 - Sim \n2 - Não');
    String? n = stdin.readLineSync();
    int number = int.parse(n!);

    if (number == 1) {
      jogar();
    }else{
      print('Obrigado!!!');
    }
  }
}