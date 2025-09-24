abstract class Raca {
  final int _bonusVida;
  final int _bonusAtaque;
  final int _bonusEscudo;

  Raca({
    required int bonusVida, 
    required int bonusAtaque,
    required int bonusEscudo,
  }): _bonusVida = bonusVida, 
      _bonusAtaque = bonusAtaque,
      _bonusEscudo = bonusEscudo;

  int get bonusVida => _bonusVida;
  int get bonusAtaque => _bonusAtaque;
  int get bonusEscudo => _bonusEscudo;

}