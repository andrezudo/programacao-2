import 'jogo.dart';
import 'jogo_facade.dart';

void main() {
  /*
  JogoDaVelha jogo = new JogoDaVelha();
  jogo.gerarTabuleiro();
  jogo.pegaProximoCaractere();
  Jogo jogo = Jogo.getInstance();
  jogo.jogar();
  */

  JogoFacade jogoFacade = new JogoFacade();
  jogoFacade.jogar();
  jogoFacade.listarPartidas();

}

///Referencias:
///https://www.youtube.com/watch?v=54InZkOnQPY&ab_channel=CodeFocus
///https://github.com/scottt2/design-patterns-in-dart/tree/master/facade
///https://dart.academy/structural-design-patterns-for-dart-and-flutter-facade/
///
///Padrões que podem ser usados: 
///Command
///