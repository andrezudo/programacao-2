import '../pessoa.dart';

abstract class BD {
  Map<int,Pessoa> _contatos = Map();
  int chave = 0;
  //late Map<int,String> _contatos;

  Map<int, Pessoa> buscarPessoa(){
    //List<Pessoa> listaDePessoas = [];
    /*for (var i = 0; i < qtd; i++) {
      print(_contatos[i]);
      print('\n');
    }*/
    //print('Pessoas:');
    //print('$_contatos \n');
    return _contatos;
  }
  bool adicionarPessoa(Pessoa p){
    chave = chave+1;
    _contatos.addAll({chave:p});
    return true;
  }
  bool removerPessoa(int num){
    //_contatos[num];
    _contatos.removeWhere((key, value) => key == num);
    return true;
  }
  bool alterarPessoa(Pessoa p, int num){
    _contatos.update(num, (existingValue) => p, ifAbsent: () => p,);
    //_contatos.add(p);
    return true;
  }
}