import 'jogo.dart';

void main() {
  /*
  JogoDaVelha jogo = new JogoDaVelha();
  jogo.gerarTabuleiro();
  jogo.pegaProximoCaractere();
  */

  Jogo jogo = Jogo.getInstance();
  jogo.jogar();
}

///Referencia:
///https://www.youtube.com/watch?v=54InZkOnQPY&ab_channel=CodeFocus
///
///Padrões que podem ser usados: 
///Command
///