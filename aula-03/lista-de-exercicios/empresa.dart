class Funcionario {
  late String nome;
  late String email;
  late String cpf;

  void setDados(String nome, String email, String cpf){
    this.nome=nome;
    this.email=email;
    this.cpf=cpf;
  }


  @override String toString(){
    return 'Nome: $nome - Email: $email - CPF: $cpf';
  }
  
}

class Empresa {
  late String nome;
  late List<Funcionario> listaDeFuncionarios = [];

  void setDados(String nome){
    this.nome=nome;
  }
  void adicionaFuncionario(Funcionario funcionario){
    listaDeFuncionarios.add(funcionario);
  }

  @override String toString(){
    return 'Nome da Empresa: $nome';
  }

  void listarFuncionarios(){
    int qtdF=listaDeFuncionarios.length;
    print('$nome');
    for (var i = 0; i < qtdF; i++) {
      print(listaDeFuncionarios[i]);
    }
  }
}

void main() {
  String nome = "André";
  String nomeEmpresa = "FI";
  String email = "andre@gmail.com";
  String cpf = "06055566677720";
  Funcionario func1 = new Funcionario();
  func1.setDados(nome, email, cpf);
  Empresa FI = new Empresa();
  FI.setDados(nomeEmpresa);
  FI.adicionaFuncionario(func1);
  FI.listarFuncionarios();
}