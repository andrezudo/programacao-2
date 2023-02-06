import 'dart:io';
import 'dart:core';
import 'resultado.dart';
import 'tabuleiro.dart';

class Partida {
  bool eVezDeX = true;
  int contaMovimento= 0;
  List<String> valores = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  List<String> combinacoes = ['012', '048', '036', '147', '246', '258', '345', '678'];
  Tabuleiro tabuleiro = new Tabuleiro();
  Resultado resultado = new Resultado();
  
  //pega entrada, verifique os vencedores
  void pegaProximoCaractere() {

    if (contaMovimento== 0) {
      //limpar o console
      tabuleiro.limpaTela();
      //redesenhe o quadro com as novas informações
      tabuleiro.gerarTabuleiro(valores);
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
    valores[number - 1] = eVezDeX ? 'X' : '0';
    //mudar a vez do jogador
    eVezDeX = !eVezDeX;
    //contagem de movimento de incremento
    contaMovimento++;
    if (contaMovimento== 9) {
      resultado.vencedor = true;
      print('EMPATE!');
    } else {
      //limpar o console
      tabuleiro.limpaTela();
      //redesenhe o quadro com as novas informações
      tabuleiro.gerarTabuleiro(valores);
    }

    //Verifique a validade dos jogadores, declare o vencedor
    //verificar a validade para o jogador X
    resultado.checaVencedor('X', combinacoes, valores);
    //verificar a validade para o jogador 0
    resultado.checaVencedor('0', combinacoes, valores);

    //até termos um vencedor, chamamos a função atual novamente
    if (resultado.vencedor == false) pegaProximoCaractere();
  }

  bool checaPosicao(int number){
    if ((valores[number - 1] == 'X' || valores[number - 1] == '0') || (number - 1 < 0 || number - 1 > 8)) {
      print('Posição inválida!');
      return false;
    }else{
      return true;
    }
  }
}