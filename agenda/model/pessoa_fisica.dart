import 'dart:ffi';

import 'documento.dart';
import 'endereco.dart';
import 'pessoa.dart';
import 'telefone.dart';

class PessoaFisica extends Pessoa{
  PessoaFisica(
    String nome, String apelido, String sexo, Telefone telefone, Endereco endereco, Documento documento
  ) 
  : super(
    nome, apelido, sexo, telefone, endereco, documento
  );
}