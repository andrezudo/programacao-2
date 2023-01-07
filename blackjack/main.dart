import 'jogo.dart';

void main(List<String> args) {
  Jogo jogo = new Jogo();
  jogo.iniciaJogo();
  jogo.adicionaJogadores();
  jogo.distribuirCartas();
  jogo.mostraJogadores();
  jogo.realizarJogada();
}