import 'dart:io';
import 'dart:math';

import 'baralho.dart';
import 'carta.dart';
import 'jogador.dart';

class Partida {
  Baralho baralho = new Baralho();
  List<Carta> cartasDoJogo = [];
  List<Jogador> listaDeJogadores = [];
  List<Jogador> listaDeVencedores = [];
  Random r = new Random();

  void iniciaPartida(){
    ///gera o baralho completo
    baralho.criarBaralho();
    baralho.mostraBaralho();
    cartasDoJogo = baralho.listaDeCartas;
  }

  void adicionaJogadores(){
    print('Quantos jogadores irão participar?');
    String? n = stdin.readLineSync();
    int qtdJ = int.parse(n!);

    var i = 1;
    while (qtdJ > 0) {
      print('Qual o nome do jogador $i?');
      String? nome = stdin.readLineSync();

      Jogador jogador = new Jogador(nome!);
      listaDeJogadores.add(jogador);
      i++;
      qtdJ--;
    }
  }

  void distribuirCartas(){
    var qtdJ = listaDeJogadores.length;
    for (var i = 0; i < qtdJ; i++) {
      ///sorteia a primeira carta
      Carta cartaSorteada1 = cartasDoJogo[r.nextInt(cartasDoJogo.length)];
      listaDeJogadores[i].suasCartas.add(cartaSorteada1);
      cartasDoJogo.remove(cartaSorteada1);

      ///sorteia a segunda carta
      Carta cartaSorteada2 = cartasDoJogo[r.nextInt(cartasDoJogo.length)];
      listaDeJogadores[i].suasCartas.add(cartaSorteada2);
      cartasDoJogo.remove(cartaSorteada2);

      listaDeJogadores[i].somaDasCartas = cartaSorteada1.valor + cartaSorteada2.valor;
    }
  }

  void comecaPartida(){
    var qtdJ = listaDeJogadores.length;
    for (var i = 0; i < qtdJ; i++) {
      var nomeJ = listaDeJogadores[i].nome;
      int condicao = 1;
      while (condicao == 1) {
        print(listaDeJogadores[i]);
        print('Sua vez de jogar $nomeJ');
        print('Deseja comprar carta? \n1 - Sim \n2 - Não');
        String? n = stdin.readLineSync();
        condicao = int.parse(n!);
        if (condicao == 1) {
          Carta cartaSorteada = cartasDoJogo[r.nextInt(cartasDoJogo.length)];
          listaDeJogadores[i].suasCartas.add(cartaSorteada);
          cartasDoJogo.remove(cartaSorteada);
          listaDeJogadores[i].somaDasCartas = listaDeJogadores[i].somaDasCartas + cartaSorteada.valor;
        }
      }
      ///adiciona vencedor na lista
      if (listaDeJogadores[i].somaDasCartas == 21) {
        listaDeVencedores.add(listaDeJogadores[i]);
      }

    }
    if (listaDeVencedores.length == 1) {
      print('Vencedor:\n $listaDeVencedores');
    }else if(listaDeVencedores.length > 1){
      print('Vencedores:\n $listaDeVencedores');
    }else{
      print('A partida saiu empatada! Veja os jogadores e suas pontuações:\n $listaDeJogadores');
    }
  }

  void mostraJogadores(){
    var tam = listaDeJogadores.length;
    print('$tam - $listaDeJogadores');

    //var tamB = cartasDoJogo.length;
    //print('$tamB - $cartasDoJogo');
  }
}