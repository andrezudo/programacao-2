import '../view/interface.dart';
import 'jogador.dart';
import 'tabuleiro.dart';

class Jogada {
  int quantidadeDeJogadas;
  int posicao;
  Interface interface = Interface.getInstance();

  Jogada(
    this.quantidadeDeJogadas,
    this.posicao  
  );

  void realizarJogada(Jogador jogador, Tabuleiro tabuleiro){
    interface.exibirTabuleiro(tabuleiro);
    posicao = interface.pegarJogadaNew(jogador, tabuleiro.valores);

    var caractere = jogador.caractere;
    tabuleiro.atualizaValores(posicao, caractere);

    quantidadeDeJogadas = quantidadeDeJogadas+1;
  }
}