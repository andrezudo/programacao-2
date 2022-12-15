import '../view/agenda.dart';
import 'dao.dart';
import 'pessoa_fisica_dao.dart';

class AgendaPessoaFisica extends Agenda {
  DAO dao = new PessoaFisicaDAO();
}