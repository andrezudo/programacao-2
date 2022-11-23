import 'dart:ffi';
import 'dart:io';

class Campo {
  late String simbolo;
  Campo(){
    this.simbolo=' ';
  }
  String getSimbolo(){
    return this.simbolo;
  }
  void setSimbolo(String simbolo){
    if (this.simbolo==' ') {
      this.simbolo=simbolo;
    } else {
      print('Campo ocupado!');
    }
  }
}

class JogoDaVelha {
  
  void comecaJogo() {

    //Campo[][] velha = Campo[3][3];
    //late List<List<Campo>> velha = new Campo();
    String simboloAtual='X';
    bool game=true;
    String? scan = stdin.readLineSync();

  }

  void desenhaJogo(Campo velha){
    print("0 1 2\n");
    var campo01 = velha.getSimbolo();
    var campo02 = velha.getSimbolo();
    var campo03 = velha.getSimbolo();
    print('0 $campo01 $campo02 $campo03');

  }
  
}

void main() {
  JogoDaVelha jogo = new JogoDaVelha();
  jogo.comecaJogo();
}
