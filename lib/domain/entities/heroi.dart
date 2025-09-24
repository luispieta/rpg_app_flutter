import 'package:rpg_app/domain/entities/personagem.dart';

class Heroi extends Personagem{
  final String _reino;
  final String _missao;

  String get missao => _missao;
  String get reino => _reino;
  
  Heroi({
    required super.nome,
    required super.vida,
    required super.escudo,
    required super.velocidade,
    required super.raca,
    required super.arquetipo,
    required String reino,
    required String missao
  }): _reino = reino, _missao = missao;

}