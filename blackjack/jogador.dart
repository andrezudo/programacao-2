import 'carta.dart';

class Jogador {
  String nome;
  List<Carta> suasCartas = [];
  int somaDasCartas = 0;

  Jogador(
    this.nome
  );

  @override 
  String toString(){
    return 'Nome: $nome - Soma: $somaDasCartas - Cartas: \n$suasCartas';
  }
}