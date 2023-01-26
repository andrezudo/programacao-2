import 'cliente.dart';
import 'pizza.dart';

class Facade {
  static Facade _instance = Facade._();

  Facade._();

  static Facade getInstance(){
    if (_instance == null) {
      _instance = Facade._();
    }

    return _instance;
  }

  Cliente criarCliente(String nome, String cpf){
    Cliente cliente = new Cliente(nome, cpf);

    return cliente;
  }

  Pizza criaPizza(String nome, double calorias, double preco){
    Pizza pizza = new Pizza(nome, calorias, preco);

    return pizza;
  }

}