import 'jogo.dart';

class JogoFacade {
  static JogoFacade _jogoFacade = JogoFacade._();
  Jogo _jogo = Jogo.getInstance();

  JogoFacade._();

  static JogoFacade getInstance(){
    if(_jogoFacade == null){
      _jogoFacade = JogoFacade._();
    }

    return _jogoFacade;
  }

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

  int quantidadeDePartidas(){
    return _jogo.partidasJogadas.length;
  }
}