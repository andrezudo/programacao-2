import 'pizza_decorator.dart';
import 'produto.dart';

class SalameDecorator extends PizzaDecorator {
  SalameDecorator(super.wrappee);
  
  void adicionarIngrediente(){
    Produto('Salame', 86, 0.99);
  }
}