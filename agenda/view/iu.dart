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
  }
  void listarTodos(){
    print('Você escolheu buscar');
  }
  void remover(){
    print('Você escolheu remover');
  }
  void alterar(){
    print('Você escolheu alterar');
  }
}