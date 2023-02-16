import 'command/comando.dart';
import 'command/partida_nova_comando.dart';
import 'command/partida_lista_comando.dart';
import 'view/interface.dart';
import 'models/partida.dart';

class Jogo {
  List<Partida> partidas = [];
  Interface interface = Interface.getInstance();

  void iniciarJogo(){
    interface.exibirMenu();
    
    String? entrada = interface.pegaOpcaoDoMenu();
    switch (entrada) {
      case '1':
        Comando partidaNovaComando = new PartidaNovaComando();
        partidaNovaComando.executar(partidas);
        iniciarJogo();
        break;
      case '2':
        Comando partidaListaComando = new PartidaListaComando();
        partidaListaComando.executar(partidas);
        iniciarJogo();
        break;
      case '3':
        interface.exibirMsgFinal();
        break;
      default:
        interface.exibirMsgDeOpcaoInvalida();
        iniciarJogo();
    }
  }
}