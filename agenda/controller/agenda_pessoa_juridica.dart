import '../view/agenda.dart';
import 'dao.dart';
import 'pessoa_dao.dart';

class AgendaPessoaJuridica extends Agenda{
  DAO dao = new PessoaDAO();
}