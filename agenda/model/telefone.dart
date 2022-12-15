class Telefone {
  late String numero;
  late String operadora;

  Telefone(this.numero, this.operadora);

  @override 
  String toString(){
    return 'Operadora: $operadora - Número: $numero';
  }
}