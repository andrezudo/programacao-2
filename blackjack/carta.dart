import 'dart:ffi';

class Carta {
  String simbolo;
  String naipe;
  int valor;

  Carta(
    this.simbolo,
    this.naipe,
    this.valor
  );

  @override 
  String toString(){
    return 'Símbolo: $simbolo - Naipe: $naipe - Valor: $valor\n';
  }
}