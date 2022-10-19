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
  List<List<Campo>> velha = new Campo() as List<List<Campo>>;
}

void main() {
  print('Olá mundo');
}