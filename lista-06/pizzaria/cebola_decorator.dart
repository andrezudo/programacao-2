import 'pizza_decorator.dart';
import 'produto.dart';

class CebolaDecorator extends PizzaDecorator {
  CebolaDecorator(super.wrappee);

  void adicionarIngrediente(){
    Produto('Cebola', 22, 0.69);
  }
}