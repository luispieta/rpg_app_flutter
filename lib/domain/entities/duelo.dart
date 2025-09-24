import 'package:rpg_app/domain/entities/dado.dart';
import 'package:rpg_app/domain/entities/personagem.dart';

class Duelo {
  final Personagem _jogador1;
  final Personagem _jogador2;
  final Dado _dado;
  Personagem? _jogadorVez;
  Personagem? _oponente;

  Duelo({
    required Personagem jogador1,
    required Personagem jogador2,
    required Dado dado,
  }) : _jogador1 = jogador1,
       _jogador2 = jogador2,
       _dado = dado;

  Personagem? get jogadorVez => _jogadorVez;
  Personagem? get oponente => _oponente;

  void iniciar() {
    int turno = 0;
    _definirPosicaoInicial();
    while (_jogador1.estaVivo() && _jogador2.estaVivo()) {
      if (_jogadorVez != null && _oponente != null) {
        final dano = _dado.jogarDado();
        print("==== TURNO $turno ====");
        print('Jogador vez: ${_jogadorVez!.nome}, dano: $dano');
        _jogadorVez!.atacar(_oponente!, _dado.jogarDado());
        _jogador1.exibirStatus();
        _jogador2.exibirStatus();
        _trocarPosicoes();
        turno++;
      }
    }
    _mostrarVencedor();
  }

  void _definirPosicaoInicial() {
    if (_jogador1.velocidade > _jogador2.velocidade) {
      _jogadorVez = _jogador1;
      _oponente = _jogador2;
    } else {
      _jogadorVez = _jogador2;
      _oponente = _jogador1;
    }
  }

  void _trocarPosicoes() {
    if (_jogadorVez?.nome == _jogador1.nome) {
      _jogadorVez = _jogador2;
      _oponente = _jogador1;
    } else {
      _jogadorVez = _jogador1;
      _oponente = _jogador2;
    }
  }

  void _mostrarVencedor() {
    if (_jogador1.estaVivo()) {
      print('O jogador ${_jogador1.nome}, venceu!!');
    } else {
      print('O jogador ${_jogador2.nome}, venceu!!');
    }
  }
}
