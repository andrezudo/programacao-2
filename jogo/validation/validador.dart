import '../models/jogador.dart';

class Validador {

  static Validador _validador = Validador._();

  Validador._();

  static Validador getInstance(){
    if(_validador == null){
      _validador = Validador._();
    }

    return _validador;
  }

  //Validações de resultado
  List<int> separarCombinacao(String combinacao){
    List<int> numeros = combinacao.split('').map((item) {
      return int.parse(item);
    }).toList();

    return numeros;
  }

  bool verificaCombinacao(String combinacao, caractere, List<String> valores){
    bool ehCombinacao = false;
    List<int> numeros = separarCombinacao(combinacao);

    for (final item in numeros) {
      if (valores[item] == caractere) {
        ehCombinacao = true;
      }else {
        ehCombinacao = false;
        break;
      }
    }

    return ehCombinacao;
  }

  bool temVencedor(Jogador jogador, List<String> valores){
    List<String> combinacoes = ['012', '048', '036', '147', '246', '258', '345', '678'];
    bool temResultado = false;
    String caractere = jogador.caractere;

    for (final item in combinacoes) {
      bool combinacaoValida = verificaCombinacao(item, caractere, valores);
      if (combinacaoValida == true) {
        temResultado = true;
        break;
      }
    }
    
    return temResultado;
  }

  bool temEmpate(int numJogadas){
    if (numJogadas >= 9) {
      return true;
    }else{
      return false;
    }
  }

  //Validações de entradas
  bool checaPosicaoRepetida(String posicao, List<String> valores){
    int num = int.parse(posicao);
    if ( (valores[num - 1] == 'X') || (valores[num - 1] == 'O') ) {
      return false;
    }else{
      return true;
    }
  }

  bool validaPosicao(String posicao, List<String> valores){
    if (posicao.isEmpty || posicao.length > 1){
      return false;
    }else{
      int num = int.parse(posicao);
      if (num > 9 || num < 1) {
        return false;
      }else{
        return checaPosicaoRepetida(posicao, valores);
      }
    }
  }

  bool validaNomeJogador(String nome){
    if (nome.isEmpty || nome.length < 2){
      return false;
    }else{
      return true;
    }

  }

}