//adicionar classe contrato e criar uma lista de contratos na concessionária 

class Cliente {
  late String nome;
  late String cpf;

  void insereDados(String nome, String cpf){
    this.nome=nome;
    this.cpf=cpf;
  }

  @override String toString(){
    return 'Nome: $nome - Codigo: $cpf';
  }
}

class Veiculo {
  late String modelo;
  late String placa;

  void insereDados(String modelo, String placa){
    this.modelo=modelo;
    this.placa=placa;
  }

  @override String toString(){
    return 'Nome: $modelo - Codigo: $placa';
  }
}

class Aluguel {
  late String data;
  late Veiculo veiculo;

  void alugarVeiculo(String data, Veiculo veiculo){
    this.data=data;
    this.veiculo=veiculo;
  }

  @override String toString(){
    return 'Data: $data - Veiculo: $veiculo';
  }  
}

class Contaro {
  late String identificador;
  late Aluguel aluguel;
  late Cliente cliente;

  Contaro(String identificador, Aluguel aluguel, Cliente cliente){
    this.identificador=identificador;
    this.aluguel=aluguel;
    this.cliente=cliente;
  }

  @override String toString(){
    return 'Identificador: $identificador - Alugel: $aluguel - Cliente: $cliente';
  }
}

class Concessionaria {
  late String nome;
  List<Cliente> listaDeClientes = [];
  List<Veiculo> listaDeVeiculos = [];
  List<Contaro> listaDeContratos = [];

  void adicionaNome(String nome){
    this.nome=nome;
  }

  void adicionaCliente(Cliente cliente){
    listaDeClientes.add(cliente);
  }

  void adicionaVeiculo(Veiculo veiculo){
    listaDeVeiculos.add(veiculo);
  }

  void adicionaContrato(Contaro contaro){
    listaDeContratos.add(contaro);
  }

  void listarClientesEVeiculos(){
    int qtdC=listaDeClientes.length;
    print('Clientes:');
    for (var i = 0; i < qtdC; i++) {
      print(listaDeClientes[i]);
    }

    int qtdV=listaDeVeiculos.length;
    print('Veiculos:');
    for (var i = 0; i < qtdV; i++) {
      print(listaDeVeiculos[i]);
    }

    int qtdCo=listaDeContratos.length;
    print('Contratos:');
    for (var i = 0; i < qtdCo; i++) {
      print(listaDeContratos[i]);
    }
  }

  @override String toString(){
    return 'Nome da Concessionária: $nome';
  }
}

void main() {
  String nome1 = 'André';
  String cpf1 = '03042678951';
  String modelo1 = 'Celta';
  String placa1 = 'SDF5289';

  Cliente cliente1 = new Cliente();
  Veiculo veiculo1 = Veiculo();

  cliente1.insereDados(nome1, cpf1);
  veiculo1.insereDados(modelo1, placa1);

  Concessionaria concessionaria1 = new Concessionaria();
  concessionaria1.adicionaNome('Parnalto');
  concessionaria1.adicionaCliente(cliente1);
  concessionaria1.adicionaVeiculo(veiculo1);

  Aluguel aluguel = new Aluguel();
  aluguel.alugarVeiculo('20/11/2022', concessionaria1.listaDeVeiculos[0]);

  Contaro contaro = new Contaro('VEI44554', aluguel, cliente1);
  concessionaria1.adicionaContrato(contaro);
  concessionaria1.listarClientesEVeiculos();
 
}