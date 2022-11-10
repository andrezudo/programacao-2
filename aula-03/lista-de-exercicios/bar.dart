//Crie um programa OO que implemente um bar com a possibilidade de
//vender bebidas para clientes.

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

class Bebida {
  late String nome;
  late double preco;

  Bebida(String nome, double preco){
    this.nome=nome;
    this.preco=preco;
  }

  @override String toString(){
    return 'nome: $nome - Preço: $preco';
  }
}

class Comanda {
  late int mesa;
  late Cliente cliente;
  late double conta;
  List<Bebida> listaDeBebidas = [];

  Comanda(int mesa, Cliente cliente){
    this.mesa=mesa;
    this.cliente=cliente;
    this.conta=0;
  }

  void adicionarBebida(Bebida bebida){
    listaDeBebidas.add(bebida);
    this.conta=conta+bebida.preco;
  }

  void listarBebidas(){
    int qtd=listaDeBebidas.length;
    print('Bebidas:');
    for (var i = 0; i < qtd; i++) {
      print(listaDeBebidas[i]);
    }
  }

  @override String toString(){
    return 'Mesa: $mesa - Cliente: $cliente - Valor da conta: $conta';
  }
}

class Bar {
  late String nome;
  List<Comanda> listaDeComandas = [];

  Bar(String nome){
    this.nome=nome;
  }

  void adicionarComanda(Comanda comanda){
    listaDeComandas.add(comanda);
  }

  void listarComandas(){
    int qtd=listaDeComandas.length;
    print('Comandas:');
    for (var i = 0; i < qtd; i++) {
      print(listaDeComandas[i]);
      listaDeComandas[i].listarBebidas();
    }
  }
}

void main() {
  Cliente andre = new Cliente('André', 'aluis7649@gmail.com', '03022144987');
  Bebida cerveja1 = new Bebida('Cerveja Skol', 8);
  Bebida cerveja2 = new Bebida('Cerveja Bohemia', 8.5);
  Bebida drink = new Bebida('Caipirinha de Morango', 12);

  Comanda comanda = new Comanda(1, andre);
  comanda.adicionarBebida(drink);
  comanda.adicionarBebida(cerveja2);
  comanda.adicionarBebida(cerveja1);
  comanda.adicionarBebida(cerveja1);
  comanda.adicionarBebida(cerveja1);

  Bar bar = new Bar('Seu Zé');
  bar.adicionarComanda(comanda);
  bar.listarComandas();
  
}