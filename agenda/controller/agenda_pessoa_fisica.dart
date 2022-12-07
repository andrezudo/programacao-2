import '../view/agenda.dart';
import 'dao.dart';
import 'pessoa_dao.dart';

class AgendaPessoaFisica extends Agenda {
  DAO dao = new PessoaDAO();
}