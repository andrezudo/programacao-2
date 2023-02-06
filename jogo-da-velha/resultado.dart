class Resultado {
  bool vencedor = false;
  
  //verifique se uma combinação é verdadeira ou falsa para um jogador (X ou 0)
  bool checaCombinacao(String combination, String checkFor, List<String> valores) {
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

  void checaVencedor(player, List<String> combinacoes, List<String> valores) {
    for (final item in combinacoes) {
      bool combinationValidity = checaCombinacao(item, player, valores);
      if (combinationValidity == true) {
        print('$player GANHOU!');
        vencedor = true;
        break;
      }
    }
  }

}