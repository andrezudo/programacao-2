import '../../aula-03/lista-de-exercicios/supermercado.dart';

class PizzaDecorator extends Produto {
  Produto _ingrediente = new Produto();

  PizzaDecorator(
    this._ingrediente
  );

}