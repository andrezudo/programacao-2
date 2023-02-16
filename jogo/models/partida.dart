import '../view/interface.dart';
import 'jogada.dart';
import 'jogador.dart';
import 'resultado.dart';
import 'tabuleiro.dart';
import 'tabuleiro_buillder.dart';
import '../validation/validador.dart';

class Partida {
  Interface interface = Interface.getInstance();
  Validador validador = Validador.getInstance();
  Tabuleiro tabuleiro = TabuleiroBuilder().pegaTabuleiro();
  late Resultado resultado;
  late Jogador jogador1, jogador2;
  Jogada jogada = new Jogada(0,0);

  void iniciarPartida(){
    jogador1 = interface.pegarJogador('X');
    jogador2 = interface.pegarJogador('O');
    interface.exibirInstrucoesDoTabuleiro();

    while (true) {
      if (chamarJogada(jogador1)) break;
      if (chamarJogada(jogador2)) break;
    }

    interface.exibirResultadoDaPartida(resultado);
    interface.exibirTabuleiro(tabuleiro);
  }

  bool chamarJogada(Jogador jogador){
    jogada.realizarJogada(jogador, tabuleiro);
    if(validador.temVencedor(jogador, tabuleiro.valores)){
        resultado = Resultado('${jogador1.nome} x ${jogador2.nome}','${jogador.nome} VENCEU!!!', jogada.posicao, jogada.quantidadeDeJogadas);
        return true;
    }else if(validador.temEmpate(jogada.quantidadeDeJogadas)){
        resultado = Resultado('${jogador1.nome} x ${jogador2.nome}','Empate', jogada.posicao, jogada.quantidadeDeJogadas);
        return true;
    }else{
        return false;
    }
  }

}