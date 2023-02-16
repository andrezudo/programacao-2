import '../models/partida.dart';

abstract class Comando {
  void executar(List<Partida> partidas);
}