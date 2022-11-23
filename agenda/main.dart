import 'dart:html';

import '../aula-03/lista-de-exercicios/arena.dart';
import 'model/cpf.dart';
import 'model/documento.dart';
import 'view/iu.dart';

void main() {
  Agenda agenda = new Agenda();
  IU iu = new IU();

  Documento doc = new CPF('06045374339');
  print(doc);
}