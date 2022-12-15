import 'dart:io';

class IU {
  void iniciar(){
    print('Olá! seja bem vindo a agenda!');
    print('Escolha o que você deseja fazer:');
    print(
      ' 1 - Adicionar pessoa \n 2 - Buscar pessoa \n 3 - Remover \n 4 - Alterar'
    );
  }
  void adicionar(){
    print('Você escolheu adicionar');
    print('Que tipo de pessoa você quer adicionar?\n 1 - Física \n 2 - Jurídica');
  }
  void listarTodos(){
    print('Você escolheu buscar');
    print('Que tipo de pessoa você quer buscar?\n 1 - Física \n 2 - Jurídica');
  }
  void remover(){
    print('Você escolheu remover');
    print('Que tipo de pessoa você quer remover?\n 1 - Física \n 2 - Jurídica');
  }
  void alterar(){
    print('Você escolheu alterar');
    print('Que tipo de pessoa você quer alterar?\n 1 - Física \n 2 - Jurídica');
  }
}