import 'dart:io';
import 'partida.dart';

//Singleton aplicado na classe Jogo
class Jogo {
  
  static Jogo _jogo = Jogo._();
  List<Partida> partidasJogadas = [];
  
  Jogo._();

  static Jogo getInstance(){
    if(_jogo == null){
      _jogo = Jogo._();
    }

    return _jogo;
  }

  void jogar(){
    Partida partida = new Partida();
    partida.pegaProximoCaractere();

    partidasJogadas.add(partida);

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