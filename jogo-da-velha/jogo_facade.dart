import 'jogo.dart';

class JogoFacade {
  Jogo _jogo = Jogo.getInstance();

  void jogar(){
    _jogo.jogar();
  }

  void listarPartidas(){
    var np = _jogo.partidasJogadas.length;
    for (var i = 0; i < np; i++) {
      var n = i+1;
      print('\nPartida $n:');
      var valores = _jogo.partidasJogadas[i].valores;
      _jogo.partidasJogadas[i].tabuleiro.gerarTabuleiro(valores);
    }
  }
}