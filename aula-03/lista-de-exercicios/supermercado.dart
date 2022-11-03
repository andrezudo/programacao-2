import 'dart:ffi';

class Produto {
  late String nome;
  late String codigo;
  late double valor;

  void insereDados(String nome, String codigo, double valor){
    this.nome=nome;
    this.codigo=codigo;
    this.valor=valor;
  }

  @override String toString(){
    return 'Nome: $nome - Codigo: $codigo - Valor: $valor';
  }
}

class NoPeso {
  List<Produto> listaDeProdutosPeso = [];

  void adicionaProduto(Produto produto){
    listaDeProdutosPeso.add(produto);
  }

  @override String toString(){
    return '$listaDeProdutosPeso';
  }
}

class NaQuantidade {
  List<Produto> listaDeProdutosQtd = [];

  void adicionaProduto(Produto produto){
    listaDeProdutosQtd.add(produto);
  }

  @override String toString(){
    return '$listaDeProdutosQtd';
  }
}

class Supermercado {
  late String nome;
  List<NoPeso> ProdutosPeso = [];
  List<NaQuantidade> ProdutosQuantidade = [];

  void insereDados(String nome){
    this.nome=nome;
  }

  void adicionaProdutoPeso(NoPeso produto){
    ProdutosPeso.add(produto);
  }

  void adicionaProdutoQtd(NaQuantidade produto){
    ProdutosQuantidade.add(produto);
  }

  @override String toString(){
    return 'Nome da Supermercado: $nome';
  }

  void listarProdutosNoPeso(){
    int qtd=ProdutosPeso.length;
    print('Produtos no peso:');
    for (var i = 0; i < qtd; i++) {
      print(ProdutosPeso[i]);
    }
  }

  void listarProdutosNaQuantidade(){
    int qtd=ProdutosQuantidade.length;
    print('Produtos na quantidade:');
    for (var i = 0; i < qtd; i++) {
      print(ProdutosQuantidade[i]);
    }
  }

}

void main() {
  String nome1 = 'Bolacha';
  String codigo1 = 'AAOO25';
  double preco1 = 2.85;
  String nome2 = 'Batata';
  String codigo2 = 'BBYO58';
  double preco2 = 4.20;

  Produto produto1 = new Produto();
  Produto produto2 = new Produto();

  produto1.insereDados(nome1, codigo1, preco1);
  produto2.insereDados(nome2, codigo2, preco2);

  NoPeso produtosNoPeso = new NoPeso();
  NaQuantidade produtosNaQuantidade = new NaQuantidade();
  produtosNoPeso.adicionaProduto(produto2);
  produtosNaQuantidade.adicionaProduto(produto1);

  Supermercado supermercado = new Supermercado();
  supermercado.insereDados('Mateus');
  supermercado.adicionaProdutoPeso(produtosNoPeso);
  supermercado.adicionaProdutoQtd(produtosNaQuantidade);
  supermercado.listarProdutosNoPeso();
  supermercado.listarProdutosNaQuantidade();
}
