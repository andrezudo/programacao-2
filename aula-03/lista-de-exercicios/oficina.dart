//Crie um programa OO que implemente uma oficina com veículos para
//concertar. Crie também os métodos concertarVeiculo( ) e entregarVeiculo().

import 'concessionaria.dart';

class Cliente {
  late String nome;
  late String email;
  late String cpf;

  Cliente(String nome, String email, String cpf){
    this.nome=nome;
    this.email=email;
    this.cpf=cpf;
  }

  @override String toString(){
    return 'nome: $nome - E-mail: $email - CPF: $cpf';
  }  
}

class Veiculo {
  late String modelo;
  late String placa;
  late Cliente dono;

  Veiculo(String modelo, String placa, Cliente dono){
    this.modelo=modelo;
    this.placa=placa;
    this.dono=dono;
  }

  @override String toString(){
    return 'Modelo: $modelo - Placa: $placa - Dono: $dono';
  }  
}

class Oficina {
  late String nome;
  List<Veiculo> listaDeVeiculosNoConcerto = [];
  List<Veiculo> listaDeVeiculosEntregues = [];

  Oficina(String nome){
    this.nome=nome;
  }

  void concertarVeiculo(Veiculo veiculo){
    listaDeVeiculosNoConcerto.add(veiculo);
  }

  void entregarVeiculo(Veiculo veiculo){
    listaDeVeiculosNoConcerto.remove(veiculo);
    listaDeVeiculosEntregues.add(veiculo);
  }

  void listarVeiculos(){
    int qtdC=listaDeVeiculosNoConcerto.length;
    print('Veiculos no concerto:');
    for (var i = 0; i < qtdC; i++) {
      print(listaDeVeiculosNoConcerto[i]);
    }

    int qtdE=listaDeVeiculosEntregues.length;
    print('Veiculos no Entregues:');
    for (var i = 0; i < qtdE; i++) {
      print(listaDeVeiculosEntregues[i]);
    }
  }
}

void main() {
  Cliente andre = new Cliente('André', 'aluis7649@gmail.com', '03022144987');
  Cliente tiago = new Cliente('Tiago', 'tiago@gmail.com', '09555144987');

  Veiculo celta = new Veiculo('Celta', 'DFGH-2010', andre);
  Veiculo hilux = new Veiculo('Hilux', 'YUIO-5670', andre);
  Veiculo onix = new Veiculo('Onix', 'ASCV-1973', tiago);

  Oficina oficina = new Oficina('Na Hora');
  oficina.concertarVeiculo(celta);
  oficina.concertarVeiculo(hilux);
  oficina.concertarVeiculo(onix);
  oficina.entregarVeiculo(hilux);
  oficina.listarVeiculos();

}