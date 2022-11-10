//Crie um programa OO que implemente uma empresa de venda de casas.

class Pessoa {
  late String nome;
  late String email;
  late String cpf;
  late String tipo;

  Pessoa(String nome, String email, String cpf, String tipo){
    this.nome=nome;
    this.email=email;
    this.cpf=cpf;
    this.tipo=tipo;
  }

  @override String toString(){
    return 'nome: $nome - E-mail: $email - CPF: $cpf';
  }  
}

class Casa {
  late String id;
  late int qtdComodos;
  late String endereco;
  late String cidade;

  Casa(String id, int qtdComodos, String endereco, String cidade){
    this.id=id;
    this.qtdComodos=qtdComodos;
    this.endereco=endereco;
    this.cidade=cidade;
  }

  @override String toString(){
    return 'Identificador: $id - Comodos: $qtdComodos - Endereço: $endereco - Cidade: $cidade';
  }
}

class Venda{
  late Pessoa comprador;
  late Pessoa vendedor;
  late Casa casa;
  late String data;
  late double valor;

  Venda(Pessoa comprador, Pessoa vendedor, Casa casa, String data, double valor){
    this.comprador=comprador;
    this.vendedor=vendedor;
    this.casa=casa;
    this.data=data;
    this.valor=valor;
  }

  @override String toString(){
    return 'Data: $data - Valor: $valor - Cliente: $comprador - Vendedor $vendedor - Casa: $casa';
  }
}

class Empresa {
  late String nome;
  List<Venda> listaDeVendas = [];

  Empresa(String nome){
    this.nome=nome;
  }

  void adicionarVenda(Venda venda){
    listaDeVendas.add(venda);
  }

  void listarVendas(){
    int qtd=listaDeVendas.length;
    print('Vendas:');
    for (var i = 0; i < qtd; i++) {
      print(listaDeVendas[i]);
    }
  }
}

void main() {
  Pessoa andre = new Pessoa('André', 'aluis7649@gmail.com', '03022144987', 'Cliete');
  Pessoa tiago = new Pessoa('Tiago', 'tiago@gmail.com', '09555144987', 'Vendedor');

  Casa casa1 = new Casa('AP001', 3, 'Rua professor bem, centro', 'Piripiri');
  Venda venda1 = new Venda(andre, tiago, casa1, '03/11/2022', 200000);
  Empresa empresa = new Empresa('Lar Feliz');
  empresa.adicionarVenda(venda1);
  empresa.listarVendas();
}