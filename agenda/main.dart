import 'dart:io';

import 'controller/agenda_pessoa_fisica.dart';
import 'controller/agenda_pessoa_juridica.dart';
import 'view/iu.dart';

void main() {
  AgendaPessoaFisica agendaPessoaFisica = new AgendaPessoaFisica();
  AgendaPessoaJuridica agendaPessoaJuridica = new AgendaPessoaJuridica();
  IU iu = new IU();

  bool exeucao = true;
  while (exeucao) {
    iu.iniciar();
    String? entrada = stdin.readLineSync();
    if (entrada == '1') {
      iu.adicionar();
      String? entradaTP = stdin.readLineSync();

      if (entradaTP == '1') {
        agendaPessoaFisica.dao.adicionar();
      }else if(entradaTP == '2'){
        agendaPessoaJuridica.dao.adicionar();
      }
    } else if(entrada == '2'){
      iu.listarTodos();
      String? entradaTP = stdin.readLineSync();

      if (entradaTP == '1') {
        agendaPessoaFisica.dao.buscar();
      }else if(entradaTP == '2'){
        agendaPessoaJuridica.dao.buscar();
      }
    }else if(entrada == '3'){
      iu.remover();
      String? entradaTP = stdin.readLineSync();

      if (entradaTP == '1') {
        agendaPessoaFisica.dao.remover();
      }else if(entradaTP == '2'){
        agendaPessoaJuridica.dao.remover();
      }
    }else if(entrada == '4'){
      iu.alterar();
      String? entradaTP = stdin.readLineSync();

      if (entradaTP == '1') {
        agendaPessoaFisica.dao.alterar();
      }else if(entradaTP == '2'){
        agendaPessoaJuridica.dao.alterar();
      }
    }

    print('Você deseja continuar? \n S - sim \n N - Não');
    String? perrgunta = stdin.readLineSync();
    if (perrgunta == 'S' || perrgunta == 's') {
      exeucao = true;
    } else if(perrgunta == 'N' || perrgunta == 'n'){
      exeucao = false;
    } else {
      exeucao = true;
    }
  } 
   
}