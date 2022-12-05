import '../pessoa.dart';

abstract class BD {
  late Map<int,List<Pessoa>> _contatos;
  late List<Pessoa> _listaDePessoas;
  //late Map<int,String> _contatos;

  List<Pessoa> buscarPessoa(Pessoa p){
    //List<Pessoa> listaDePessoas = [];
    return _listaDePessoas;
  }
  bool adicionarPessoa(Pessoa p){
    _listaDePessoas.add(p);
    int chave = _listaDePessoas.length;
    _contatos.addAll({chave:_listaDePessoas});
    return true;
  }
  bool removerPessoa(Pessoa p){
    _listaDePessoas.remove(p);
    return true;
  }
  bool alterarPessoa(Pessoa p){
    _listaDePessoas.add(p);
    return true;
  }
}