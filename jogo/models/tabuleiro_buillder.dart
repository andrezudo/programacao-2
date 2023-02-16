import 'tabuleiro.dart';

class TabuleiroBuilder {
  Tabuleiro pegaTabuleiro(){
    return _criaTabuleiro();
  }

  Tabuleiro _criaTabuleiro(){
    List<String> valores = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];

    return Tabuleiro(valores);
  }
  
}