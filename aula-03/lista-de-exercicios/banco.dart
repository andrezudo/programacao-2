class Cliente {
  late String nome;
  late String cpf;
  Conta conta = new Conta();

  void insereDados(String nome, String cpf){
     this.nome=nome;
     this.cpf=cpf;
  }

  void criaConta(Conta conta){
    this.conta=conta;
  }

  @override String toString(){
    return 'Nome: $nome - CPF: $cpf - conta $conta';
  }

  void listarConta(){
    print('$conta');
  }
}

abstract class Conta {
  late String numero;
  late double saldo;

  void criarConta(String umNumero);
  void sacar(double valor);
  void depositar(double valor);

  /*void criaNumero(String numero){
    this.numero=numero;
    this.saldo=0;
  }

  void sacar(double valor){
    this.saldo=saldo-valor;
  }

  void depositar(double valor){
    this.saldo=saldo+valor;
  }*/

  @override String toString(){
    return 'Número: $numero - Saldo: $saldo';
  }
}

abstract class Operacao extends Conta{
  @override
  late String numero;
  @override
  late double saldo;

  @override
  void criarConta(String umNumero) {
    this.numero=umNumero;
    this.saldo=0;
  }

  @override
  void depositar(double valor) {
    this.saldo=saldo+valor;
  }

  @override
  void sacar(double valor) {
    this.saldo=saldo-valor;
  }

  void render();
}

class ContaCorrente{}
class ContaPoupanca{}
class contaSalario{}

class Banco {
  late String nome;
  List<Cliente> clientes = [];

  void insereNome(String nome){
    this.nome=nome;
  }

  void adicionarCliente(Cliente cliente){
    clientes.add(cliente);
  }

  void listarClientes(){
    int qtd=clientes.length;
    print('Clientes');
    for (var i = 0; i < qtd; i++) {
      print(clientes[i]);
    }
  }
}

void main(List<String> args) {
  /*
  String nome1 = 'André';
  String cpf1 = '03042678951';

  Cliente cliente = new Cliente();
  cliente.insereDados(nome1, cpf1);

  Conta conta = new Conta();
  conta.criaNumero('01402397');

  cliente.criaConta(conta);
  cliente.conta.depositar(200);
  cliente.conta.sacar(20);

  Banco banco1 = new Banco();
  banco1.insereNome('NuBank');
  banco1.adicionarCliente(cliente);
  banco1.listarClientes();
  */
}