import '../models/partida.dart';
import '../view/interface.dart';
import 'comando.dart';

class PartidaListaComando implements Comando{
  Interface interface = Interface.getInstance();
  
  @override
  void executar(List<Partida> partidas) {
    interface.exibirHistoricoDePartidas(partidas);
  }
  
}