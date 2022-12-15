import '../view/agenda.dart';
import 'dao.dart';
import 'pessoa_juridica_dao.dart';

class AgendaPessoaJuridica extends Agenda{
  DAO dao = new PessoaJuridicaDAO();
}