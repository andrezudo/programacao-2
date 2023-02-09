import 'dart:io';
import 'jogo_facade.dart';

class Menu {
  JogoFacade _jogoFacade = JogoFacade.getInstance();

  void iniciar(){
    if(_jogoFacade.quantidadeDePartidas() < 1){
      print('____________________________________');
      _jogoFacade.jogar();
    }

    print('____________________________________');
    print('Escolha uma opção\n1 - Jogar \n2 - Todas as partidas \n3 - Encerrar');
    String? n = stdin.readLineSync();
    int number = int.parse(n!);

    if (number == 1) {
      print('____________________________________');
      _jogoFacade.jogar();
      iniciar();
    }else if(number == 2){
      print('____________________________________');
      _jogoFacade.listarPartidas();
      iniciar();
    }else if(number == 3){
      print('____________________________________');
      print('Obrigado!!!');
    }else{
      print('____________________________________');
      print('Opção inválida!!!');
      iniciar();
    }
  }


}