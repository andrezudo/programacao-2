import 'dart:io';
import 'builder/partida_builder.dart';
//import 'partida.dart';

//Singleton aplicado na classe Jogo
class Jogo {
  
  static Jogo _jogo = Jogo._();
  List<PartidaBuilder> partidasJogadas = [];
  
  Jogo._();

  static Jogo getInstance(){
    if(_jogo == null){
      _jogo = Jogo._();
    }

    return _jogo;
  }

  void jogar(){
    //Partida partida = new Partida();

    PartidaBuilder partidaBuilder = PartidaBuilder(['1', '2', '3', '4', '5', '6', '7', '8', '9'], ['012', '048', '036', '147', '246', '258', '345', '678']);
    
    Partida partida = new Partida(partidaBuilder);

    partidaBuilder.pegaProximoCaractere();

    //partida.pegaProximoCaractere();

    partidasJogadas.add(partidaBuilder);

    /*
    print('Deseja continuar jogando? \n1 - Sim \n2 - Não');
    String? n = stdin.readLineSync();
    int number = int.parse(n!);

    if (number == 1) {
      jogar();
    }else{
      print('Obrigado!!!');
    }
    */
  }
}