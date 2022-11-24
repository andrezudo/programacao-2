import 'dart:ffi';

import 'documento.dart';
import 'endereco.dart';
import 'telefone.dart';

abstract class Pessoa {
  late String nome;
  late String apelido;
  late Char sexo;
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
}