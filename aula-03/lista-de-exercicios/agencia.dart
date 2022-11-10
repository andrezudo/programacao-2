//Crie um programa OO que implemente uma agência de viagens em que
//seja possível agendar viagens e cancelar viagens.

import 'arena.dart';

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

class Local {
  late String cidade;
  late String estado;
  late String pais;

  Local(String cidade, String estado, String pais){
    this.cidade=cidade;
    this.estado=estado;
    this.pais=pais;
  }

  @override String toString(){
    return '$cidade, $estado - $pais';
  }
}

class Voo {
  late String id;
  late Local partida;
  late Local chegada;
  late String distancia;

  Voo(String id, Local partida, Local chegada, String distancia){
    this.id=id;
    this.partida=partida;
    this.chegada=chegada;
    this.distancia=distancia;
  }

  @override String toString(){
    return 'Identificador: $id - Partida: $partida - Destino: $chegada';
  }
}

class Passagem {
  late String numero;
  late Cliente cliente;
  late Voo voo;
  late String data;
  late String horario;

  Passagem(String numero, Cliente cliente, Voo voo, String data, String horario){
    this.numero=numero;
    this.cliente=cliente;
    this.voo=voo;
    this.data=data;
    this.horario=horario;
  }

  @override String toString(){
    return 'Número: $numero - Data: $data - Horário: $horario - Cliente: $cliente - Voo: $voo';
  }
}

class Agencia {
  late String nome;
  List<Passagem> listaDePassagens = [];

  Agencia(String nome){
    this.nome=nome;
  }

  void agendarViagem(Passagem passagem){
    listaDePassagens.add(passagem);
  }

  void cancelarViagem(Passagem passagem){
    listaDePassagens.remove(passagem);
  }

  void listarPassagens(){
    int qtd=listaDePassagens.length;
    print('Passagens:');
    for (var i = 0; i < qtd; i++) {
      print(listaDePassagens[i]);
    }
  }

}

void main() {
  Cliente andre = new Cliente('André', 'aluis7649@gmail.com', '03022144987');
  Cliente joao = new Cliente('João', 'joao@gmail.com', '01044937582');

  Local piripiri = new Local('Piripiri', 'Piauí', 'Brasil');
  Local foraleza = new Local('Fortaleza', 'Ceará', 'Brasil');
  Local natal = new Local('Natal', 'Rio Grande do Norte', 'Brasil');

  Voo voo1 = new Voo('PF001', piripiri, foraleza, '2000 KM');
  Voo voo2 = new Voo('FN002', foraleza, natal, '1000 KM');
  Voo voo3 = new Voo('NP003', natal, piripiri, '3000 KM');

  Passagem passagem1 = new Passagem('001', andre, voo1, '20/12/2022', '20:00');
  Passagem passagem2 = new Passagem('002', joao, voo3, '12/12/2022', '10:00');
  Passagem passagem3 = new Passagem('001', andre, voo2, '20/12/2022', '22:00');

  Agencia agencia = new Agencia('Viagem Feliz');
  agencia.agendarViagem(passagem1);
  agencia.agendarViagem(passagem2);
  agencia.agendarViagem(passagem3);
  agencia.listarPassagens();

  agencia.cancelarViagem(passagem3);
  agencia.listarPassagens();


}