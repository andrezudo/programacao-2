import 'dart:io';

class Jogador {
  late String nome;
  late String simbolo;

  void pegaNome(){
    print('Digite seu nome:');
    nome = stdin.readLineSync()!;
  }
}

class Tabuleiro {
  List altura = [];
  List largura = [];
}

void main() {

  Jogador player1 = new Jogador();
  player1.pegaNome();
  String nome = player1.nome;
  print('O nome do jogador é $nome');

  Tabuleiro tabuleiro = new Tabuleiro();

  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      tabuleiro.altura.add(i);
      tabuleiro.largura.add(j);
    }
  }  

  print(tabuleiro.altura);
  print(tabuleiro.largura);
  ///teste

}