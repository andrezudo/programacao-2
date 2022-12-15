class Endereco {
  late String rua;
  late int numero;
  late String bairro;
  late String cidade;
  late String estado;
  late String cep;

  Endereco(
    this.rua,
    this.numero,
    this.bairro,
    this.cidade,
    this.estado,
    this.cep
  );

  @override 
  String toString(){
    return 'Rua: $rua - Número: $numero - Bairro: $bairro - Cidade: $cidade - Estado: $estado - CEP: $cep';
  }
}