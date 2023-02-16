import '../models/partida.dart';
import 'comando.dart';

class PartidaNovaComando implements Comando{
  
  @override
  void executar(List<Partida> partidas) {
    Partida partida = new Partida();
    partida.iniciarPartida();
    partidas.add(partida);
  }
  
}