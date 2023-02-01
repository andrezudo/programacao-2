import 'dart:io';
import 'dart:core';

class JogoDaVelha {
  bool vencedor = false;
  bool eVezDeX = true;
  int contaMovimento= 0;
  List<String> valores = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  List<String> combinacoes = ['012', '048', '036', '147', '246', '258', '345', '678'];

  //verifique se uma combinação é verdadeira ou falsa para um jogador (X ou 0)
  bool checaCombinacao(String combination, String checkFor) {
    //dividir os números em uma lista de inteiros
    List<int> numbers = combination.split('').map((item) {
      return int.parse(item);
    }).toList();
    bool match = false;
    for (final item in numbers) {
      if (valores[item] == checkFor) {
        match = true;
      } else {
        match = false;
        break;
      }
    }
    return match;
  }
  void checaVencedor(player) {
    for (final item in combinacoes) {
      bool combinationValidity = checaCombinacao(item, player);
      if (combinationValidity == true) {
        print('$player WON!');
        vencedor = true;
        break;
      }
    }
  }
  //pega entrada, verifique os vencedores
  void pegaProximoCaractere() {
    //obter entrada do jogador
    print('Escolha o número para ${eVezDeX == true ? "X" : "0"}');
    String? n = stdin.readLineSync();
    int number = int.parse(n!);
    //int number = int.parse(stdin.readLineSync());
    //alterar o valor do número selecionado em valores
    valores[number - 1] = eVezDeX ? 'X' : '0';
    //mudar a vez do jogador
    eVezDeX = !eVezDeX;
    //contagem de movimento de incremento
    contaMovimento++;
    if (contaMovimento== 9) {
      vencedor = true;
      print('DRAW!');
    } else {
      //limpar o console
      limpaTela();
      //redesenhe o quadro com as novas informações
      gerarTabuleiro();
    }
    //
    //Verifique a validade dos jogadores, declare o vencedor
    //
    //verificar a validade para o jogador X
    checaVencedor('X');
    //verificar a validade para o jogador 0
    checaVencedor('0');

    //até termos um vencedor, chamamos a função atual novamente
    if (vencedor == false) pegaProximoCaractere();
  }
  //limpar a tela do console
  void limpaTela() {
    if (Platform.isWindows) {
      print(Process.runSync("cls", [], runInShell: true).stdout);
    } else {
      print(Process.runSync("clear", [], runInShell: true).stdout);
    }
  }
  //mostrar o estado atual do tabuleiro
  void gerarTabuleiro() {
    print('   |   |   ');
    print(' ${valores[0]} | ${valores[1]} | ${valores[2]} ');
    print('___|___|___');
    print('   |   |   ');
    print(' ${valores[3]} | ${valores[4]} | ${valores[5]} ');
    print('___|___|___');
    print('   |   |   ');
    print(' ${valores[6]} | ${valores[7]} | ${valores[8]} ');
    print('   |   |   ');
  }
  
}