import 'dart:io';

import 'controller/agenda_pessoa_fisica.dart';
import 'controller/agenda_pessoa_juridica.dart';
import 'model/cpf.dart';
import 'model/documento.dart';
import 'model/endereco.dart';
import 'model/pessoa.dart';
import 'model/pessoa_fisica.dart';
import 'model/telefone.dart';
import 'view/iu.dart';

void main() {
  AgendaPessoaFisica agendaPessoaFisica = new AgendaPessoaFisica();
  IU iu = new IU();

  CPF cpf = new CPF('06045374339');
  Endereco endrereco = new Endereco('professor bem', 736, 'centro', 'piripiri', 'Piauí', '64260000');
  Telefone tel = new Telefone('86994998786', 'Claro');
  PessoaFisica pessoa = new PessoaFisica('André', 'André', 'M', tel, endrereco, cpf);
  print(pessoa);

  bool exeucao = true;
  while (exeucao) {
    iu.iniciar();
    String? entrada = stdin.readLineSync();
    print('teste');
    if (entrada == '1') {
      iu.adicionar();
      String? entradaTP = stdin.readLineSync();
      agendaPessoaFisica.dao.adicionar();

      if (entradaTP == 1) {
        AgendaPessoaFisica agendaPessoaFisica = new AgendaPessoaFisica();
      }else if(entradaTP == 2){
        AgendaPessoaJuridica agendaPessoaJuridica = new AgendaPessoaJuridica();
      }
    } else if(entrada == 2){
      iu.listarTodos();
    }else if(entrada == 3){
      iu.remover();
    }else if(entrada == 4){
      iu.listarTodos();
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