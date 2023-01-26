import 'facade.dart';

void main() {
  //Caixa c = new Caixa();
  //c.checaFacede();

  Facade facade = Facade.getInstance();
  facade.criarCliente('André', '06045374339');
  facade.criaPizza('Margherita', 1104, 10.00);
}