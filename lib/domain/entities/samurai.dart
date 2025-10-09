import 'package:rpg_app/domain/entities/arquetipo.dart';

class Samurai extends Arquetipo {
  Samurai({
    required super.bonusVida, 
    required super.bonusAtaque, 
    required super.bonusEscudo, 
    required super.bonusVelocidade
  });
  
  @override
  void habilidadeEspecial() {
  }

  
}