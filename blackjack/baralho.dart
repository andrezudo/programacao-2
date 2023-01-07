import 'carta.dart';

class Baralho {
  List<Carta> listaDeCartas = [];
  var cartas = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'];
  var naipes = ['O', 'E', 'P', 'C'];

  void criarBaralho(){
    var tp = cartas.length;
    var tn = naipes.length;
    //print('$tp e $tn');

    for (var j = 0; j < tn; j++) {
      var naipe = naipes[j];
      //print('$j - $naipe');
      for (var i = 0; i < tp; i++) {
        var carta = cartas[i];
        var valor = i+1;
        //print('$j - $i - $valor - $carta - $naipe');
        Carta cartaa = new Carta(carta, naipe, valor);
        listaDeCartas.add(cartaa);
      }
    }
  }

  void mostraBaralho(){
    var tam = listaDeCartas.length;
    print('$tam \n$listaDeCartas');
  }
}