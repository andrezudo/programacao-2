import 'pizza_decorator.dart';
import 'produto.dart';

class PresuntoDecorator extends PizzaDecorator {
  PresuntoDecorator(super.wrappee);
  
  void adicionarIngrediente(){
    Produto('Presunto', 35, 0.99);
  }
}