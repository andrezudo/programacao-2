import 'pedido.dart';

class Cliente {
  late String nome;
  late String cpf;
  List<Pedido> litaDePedidos = [];

  Cliente(nome, cpf){
    this.nome=nome;
    this.cpf=cpf;
  }
}