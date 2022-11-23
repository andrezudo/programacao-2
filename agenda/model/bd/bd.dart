import 'dart:ffi';

import '../pessoa.dart';

class BD {
  late Map<Char,List<Pessoa>> _contatos;

  List<Pessoa> buscarPessoa(Pessoa p){
    List<Pessoa> listaDePessoas = [];
    return listaDePessoas;
  }
  bool adicionarPessoa(Pessoa p){
    return true;
  }
  bool removerPessoa(Pessoa p){
    return true;
  }
  bool alterarPessoa(Pessoa p){
    return true;
  }
}