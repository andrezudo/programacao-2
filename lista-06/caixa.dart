import 'facade.dart';

class Caixa {
  Facade facade1 = Facade.getInstance();
  Facade facade2 = Facade.getInstance();


  void checaFacede(){
    if(facade1 == facade2){
      print('deu certo');
    }else{
      print('deu errado');
    }
  }

  //facade.criarCliente();
}