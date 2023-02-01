import 'pizza_decorator.dart';
import 'produto.dart';

class QueijoDecorator extends PizzaDecorator {
  QueijoDecorator(super.wrappee);

  void adicionarIngrediente(){
    Produto('Queijo', 92, 0.69);
  }
}