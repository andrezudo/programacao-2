import '../model/bd/bd.dart';
import 'dao.dart';

class PessoaDAO implements DAO{
  late BD bd;
  
  @override
  void adicionar() {
    bd.adicionarPessoa;
  }
  
  @override
  void alterar() {
    bd.alterarPessoa;
  }
  
  @override
  void buscar() {
    bd.buscarPessoa;
  }
  
  @override
  void remover() {
    bd.removerPessoa;
  }
}