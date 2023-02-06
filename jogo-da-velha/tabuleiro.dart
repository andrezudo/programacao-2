import 'dart:io';
import 'dart:core';

class Tabuleiro {
  
  //limpar a tela do console
  void limpaTela() {
    if (Platform.isWindows) {
      print(Process.runSync("cls", [], runInShell: true).stdout);
    } else {
      print(Process.runSync("clear", [], runInShell: true).stdout);
    }
  }
  
  //mostrar o estado atual do tabuleiro
  void gerarTabuleiro(List<String> valores) {
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