import 'dart:ffi';

import 'documento.dart';
import 'endereco.dart';
import 'telefone.dart';

abstract class Pessoa {
  late String nome;
  late String apelido;
  late String sexo;
  late Telefone _telefone;
  late Endereco _endereco;
  late Documento _documento;

  Pessoa(
    this.nome,
    this.apelido,
    this.sexo,
    this._telefone,
    this._endereco,
    this._documento
  );

  @override 
  String toString(){
    return 'Nome: $nome - Apelido: $apelido - Sexo: $sexo - Telefone: $_telefone - Endereco: $_endereco - Documento: $_documento';
  }
}