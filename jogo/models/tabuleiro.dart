class Tabuleiro {
  List<String> valores;

  Tabuleiro(this.valores);

  List retornaValores(){
    return valores;
  }

  void atualizaValores(int posicao, String caractere){
    valores[posicao - 1] = caractere;
  }
}