import 'dart:io';
import '../models/jogador.dart';
import '../models/partida.dart';
import '../models/resultado.dart';
import '../models/tabuleiro.dart';
import '../validation/validador.dart';

class Interface {

  static Interface _interface = Interface._();
  Validador validador = Validador.getInstance();

  Interface._();

  static Interface getInstance(){
    if(_interface == null){
      _interface = Interface._();
    }

    return _interface;
  }

  void exibirMenu(){
    print('\n===============  MENU  ===============');
    print('1 - Jogar');
    print('2 - Todas as partidas');
    print('3 - Sair');
    print('======================================\n');
  }

  String? pegaOpcaoDoMenu(){
    while (true) {
      String? entrada = stdin.readLineSync();
      return entrada;
    }
  }

  Jogador pegarJogador(String caractere){
    while (true) {
      print('\n======================================');
      print('Digite o nome do Jogador que usará $caractere:');
      String? nome = stdin.readLineSync();
      Jogador jogador =  new Jogador(nome!, caractere);
      
      if (validador.validaNomeJogador(nome)) return jogador;
    }

  }

  String? pegarJogada(Jogador jogador, List<String> valores){
    while(true){
      print('======================================');
      exibirJogador(jogador);
      print('Escolha a posição que deseja jogar:');
      String? posicao = stdin.readLineSync();

      if (validador.checaPosicaoRepetida(posicao!, valores)){
        return posicao; 
      }else{
        exibirMsgDePosicaoInvalida();
      }
    }
  }

  int pegarJogadaNew(Jogador jogador, List<String> valores){
    while(true){
      print('======================================');
      exibirJogador(jogador);
      print('Escolha a posição que deseja jogar:');
      String? posicao = stdin.readLineSync();

      if (validador.validaPosicao(posicao!, valores)){
        int num = int.parse(posicao);
        return num;
        //Jogada jogada = new Jogada(num);
        //return jogada;
      }else{
        exibirMsgDePosicaoInvalida();
      }
    }
  }

  void exibirJogador(Jogador jogador){
    String nome = jogador.nome;
    String caractere = jogador.caractere;
    print('$nome - $caractere');
  }

  void exibirInstrucoesDoTabuleiro(){
    print('\n======================================');
    print('Cada número representa a posição \nonde será colocado o caractere');
  }

  void exibirMsgDePosicaoInvalida(){
    print('Posição inválida!');
  }

  void exibirMsgFinal(){
    print('\n======================================');
    print('Obrigado!!!');
    print('======================================');
  }

  void exibirMsgDeOpcaoInvalida(){
    print('Opção inválida!');
  }

  void exibirVencedor(Jogador jogador){
    String nome = jogador.nome;
    String caractere = jogador.caractere;
    print('======================================');
    print('$nome VENCEU!!!');
    print('Caractere: $caractere');
  }

  void exibirResultadoDaPartida(Resultado resultado){
    String jogadores = resultado.jogadores;
    String vencedor = resultado.vencedor;
    int posicao = resultado.posicao;
    int nJogadas = resultado.quantidadeDeJogadas;
    print('======================================');
    print(jogadores);
    print('Resultado: $vencedor');
    print('Última jogada na posicao $posicao');
    print('$nJogadas jogadas realizadas');
  }

  void exibirHistoricoDePartidas(List<Partida> partidas){
    print('\n======================================');
    var np = partidas.length;
    if (np <= 0) {
      print('Nenhuma partida jogada!!!');
    }else{
      print('$np partidas jogadas');
      for (var i = 0; i < np; i++) {
        print('--------------------------------------');
        var n = i+1;
        print('Partida $n:');
        exibirResultadoDaPartida(partidas[i].resultado);
        exibirTabuleiro(partidas[i].tabuleiro);
      }
    }
    print('\n======================================');
  }

  void exibirTabuleiro(Tabuleiro tabuleiro){
    List<String> valores = tabuleiro.valores;
    print('======================================');
    print('   |   |   ');
    print(' ${valores[0]} | ${valores[1]} | ${valores[2]} ');
    print('___|___|___');
    print('   |   |   ');
    print(' ${valores[3]} | ${valores[4]} | ${valores[5]} ');
    print('___|___|___');
    print('   |   |   ');
    print(' ${valores[6]} | ${valores[7]} | ${valores[8]} ');
    print('   |   |   ');
    print('======================================');
  }
}