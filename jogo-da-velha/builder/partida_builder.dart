import 'dart:io';
import '../resultado.dart';
import '../tabuleiro.dart';

class Partida {
  final List<String> _valores;
  final List<String> _combinacoes;

  Partida(PartidaBuilder builder):
    _valores = builder._valores,
    _combinacoes = builder._combinacoes;
}

class PartidaBuilder {
  bool eVezDeX = true;
  int _contaMovimento = 0;
  late List<String> _valores;
  late List<String> _combinacoes;
  Tabuleiro tabuleiro = new Tabuleiro();
  Resultado resultado = new Resultado();

  PartidaBuilder(this._valores, this._combinacoes);

  //pega entrada, verifique os vencedores
  void pegaProximoCaractere() {

    if (_contaMovimento== 0) {
      //limpar o console
      tabuleiro.limpaTela();
      //redesenhe o quadro com as novas informações
      tabuleiro.gerarTabuleiro(_valores);
    }

    bool posicaoValida = false;
    int number = 0;
    while (posicaoValida == false) {
      //obter entrada do jogador
      print('Escolha o número para ${eVezDeX == true ? "X" : "0"}');
      String? n = stdin.readLineSync();
      number = int.parse(n!);
      
      posicaoValida = checaPosicao(number);
    }

    //alterar o valor do número selecionado em valores
    _valores[number - 1] = eVezDeX ? 'X' : '0';
    //mudar a vez do jogador
    eVezDeX = !eVezDeX;
    //contagem de movimento de incremento
    _contaMovimento++;
    if (_contaMovimento== 9) {
      resultado.vencedor = true;
      tabuleiro.gerarTabuleiro(_valores);
      print('EMPATE!');
    } else {
      //limpar o console
      tabuleiro.limpaTela();
      //redesenhe o quadro com as novas informações
      tabuleiro.gerarTabuleiro(_valores);
    }

    //Verifique a validade dos jogadores, declare o vencedor
    //verificar a validade para o jogador X
    resultado.checaVencedor('X', _combinacoes, _valores);
    //verificar a validade para o jogador 0
    resultado.checaVencedor('0', _combinacoes, _valores);

    //até termos um vencedor, chamamos a função atual novamente
    if (resultado.vencedor == false) pegaProximoCaractere();
  }

  bool checaPosicao(int number){
    if ((_valores[number - 1] == 'X' || _valores[number - 1] == '0') || (number - 1 < 0 || number - 1 > 8)) {
      print('Posição inválida!');
      return false;
    }else{
      return true;
    }
  }

  List<String> retornaValores(){
    return _valores;
  }

  void retornaVencedor(){
    resultado.checaVencedor('X', _combinacoes, _valores);
    //verificar a validade para o jogador 0
    resultado.checaVencedor('0', _combinacoes, _valores);
  }
  
  Partida build(){
    return Partida(this);
  }
}