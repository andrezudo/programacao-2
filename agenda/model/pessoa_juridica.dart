import 'dart:ffi';

import 'cnpj.dart';
import 'endereco.dart';
import 'pessoa.dart';
import 'telefone.dart';

class PessoaJuridica extends Pessoa{
  PessoaJuridica(
    String nome, String apelido, String sexo, Telefone telefone, Endereco endereco, CNPJ documento
  ) 
  : super(
    nome, apelido, sexo, telefone, endereco, documento
  );
}