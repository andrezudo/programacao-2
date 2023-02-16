import 'dart:io';

import 'partida.dart';

class Jogo {
  List<Partida> partidasJogadas = [];

  void iniciaJogo(){
    int condicao = 1;
    while(condicao == 1){
      Partida p = new Partida();
      p.iniciaPartida();
      p.adicionaJogadores();
      p.distribuirCartas();
      //p.mostraJogadores();
      p.comecaPartida();
      p.mostraResultado();

      partidasJogadas.add(p);

      print('\n---------------------------------\n');
      print('Deseja continuar jogando? \n1 - Sim \n2 - Não');
      String? n = stdin.readLineSync();
      condicao = int.parse(n!);

    }
  }

  void mostraResultados(){
    var qtdJ = partidasJogadas.length;
    for (var i = 0; i < qtdJ; i++) {
      var n = i + 1;
      print('\n---------------------------------\nPartida $n');
      partidasJogadas[i].mostraResultado();
    }
  }

}
