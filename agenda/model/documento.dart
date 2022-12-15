abstract class Documento {
  late String numero;

  Documento(this.numero);

  @override 
  String toString(){
    return 'Número: $numero';
  }
}