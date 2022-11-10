//Crie um programa OO que implemente uma arena de esportes que tenha
//esportes cadastrados. Crie também o métodos marcarHorario( ).

class Esporte {
  late String nome;
  late int qtdPessoas;

  Esporte(String nome, int qtdPessoas){
    this.nome=nome;
    this.qtdPessoas=qtdPessoas;
  }

  @override String toString(){
    return 'nome: $nome - Quantidade de pessoas: $qtdPessoas';
  }
}

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

class Agenda {
  late String data;
  late String horaDeInicio;
  late String horaDEFim;
  late Cliente cliente;
  late Esporte esporte;

  void marcarHorario(String data, String inicio, String fim, Cliente cliente, Esporte esporte){
    this.data=data;
    this.horaDeInicio=inicio;
    this.horaDEFim=fim;
    this.cliente=cliente;
    this.esporte=esporte;
  }

  @override String toString(){
    return 'Data: $data - Inicio: $horaDeInicio - Fim: $horaDEFim - Cliente: $cliente - Esporte: $esporte';
  }
}

class Arena {
  late String nome;
  List<Agenda> listaDeAgendas = [];
  
  Arena(String nome){
    this.nome=nome;
  }

  void adicionarAgenda(Agenda agenda){
    listaDeAgendas.add(agenda);
  }

  void listarAgendas(){
    int qtd=listaDeAgendas.length;
    print('Horários marcados:');
    for (var i = 0; i < qtd; i++) {
      print(listaDeAgendas[i]);
    }
  }
}

void main() {
  Esporte futebol = new Esporte('Futebol', 22);
  Esporte futvolei = new Esporte('Futvolei', 4);

  Cliente andre = new Cliente('André', 'aluis7649@gmail.com', '03022144987');
  Cliente joao = new Cliente('João', 'joao@gmail.com', '01044937582');

  Agenda agenda1 = new Agenda();
  agenda1.marcarHorario('22/11/2022', '12:00', '13:00', andre, futebol);
  Agenda agenda2 = new Agenda();
  agenda2.marcarHorario('22/11/2022', '16:00', '18:00', joao, futvolei);

  Arena arena = new Arena('Arena da galera');
  arena.adicionarAgenda(agenda1);
  arena.adicionarAgenda(agenda2);

  arena.listarAgendas();

}