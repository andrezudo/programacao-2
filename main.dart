class Jogador {
  late String nome;
  late String peca;
}

class Tabuleiro {
  List altura = [];
  List largura = [];
}




void main() {

  Tabuleiro tabuleiro = new Tabuleiro();

  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      tabuleiro.altura.add(i);
      tabuleiro.largura.add(j);
    }
  }  

  print(tabuleiro.altura);
  print(tabuleiro.largura);

}