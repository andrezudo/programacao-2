import 'dart:ffi';

import 'documento.dart';
import 'endereco.dart';
import 'pessoa.dart';
import 'telefone.dart';

class PessoaJuridica extends Pessoa{
  PessoaJuridica(
    String nome, String apelido, String sexo, Telefone telefone, Endereco endereco, Documento documento
  ) 
  : super(
    nome, apelido, sexo, telefone, endereco, documento
  );
}