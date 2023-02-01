import 'pizza_decorator.dart';
import 'produto.dart';

class TomateDecorator extends PizzaDecorator {
  TomateDecorator(super.ingrediente);

  void adicionarIngrediente(){
    Produto('Tomate', 92, 0.69);
  }
}