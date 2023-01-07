import 'dart:io';
import 'dart:math';

import 'baralho.dart';
import 'carta.dart';
import 'jogador.dart';


class Jogo {
  Baralho baralho = new Baralho();
  List<Carta> cartasDoJogo = [];
  List<Jogador> listaDeJogadores = [];
  Random r = new Random();

  void iniciaJogo(){
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

  void realizarJogada(){
    var qtdJ = listaDeJogadores.length;
    for (var i = 0; i < qtdJ; i++) {
      var nomeJ = listaDeJogadores[i].nome;
      int condicao = 1;
      while (condicao == 1) {
        print('Sua vez de jogar $nomeJ');
        print('Deseja comprar carta?');
        String? n = stdin.readLineSync();
        condicao = int.parse(n!);
        if (condicao == 1) {
          Carta cartaSorteada = cartasDoJogo[r.nextInt(cartasDoJogo.length)];
          listaDeJogadores[i].suasCartas.add(cartaSorteada);
          cartasDoJogo.remove(cartaSorteada);
          listaDeJogadores[i].somaDasCartas = listaDeJogadores[i].somaDasCartas + cartaSorteada.valor;
        }
        print(listaDeJogadores[i]);
      }
    }
  }

  void mostraJogadores(){
    var tam = listaDeJogadores.length;
    print('$tam - $listaDeJogadores');

    //var tamB = cartasDoJogo.length;
    //print('$tamB - $cartasDoJogo');
  }
}
