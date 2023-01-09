import 'partida.dart';

class Jogo {
  List<Partida> partidasJogadas = [];

  void iniciaJogo(){
    Partida p = new Partida();
    p.iniciaPartida();
    p.adicionaJogadores();
    p.distribuirCartas();
    //p.mostraJogadores();
    p.comecaPartida();

    partidasJogadas.add(p);
  }

}
