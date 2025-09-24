import 'package:flutter/material.dart';
import 'package:rpg_app/domain/entities/personagem.dart';

class PersonagemView extends StatelessWidget{
  
  const PersonagemView({super.key});
  
  final List<Personagem> _personagens = [

    final dado = Dado(20);
    final humano = Humano(bonusVida: 5, bonusAtaque: 3, bonusEscudo: 2);
    final arqueiro = Arqueiro(bonusVida: 10, bonusAtaque: 5, bonusEscudo: 15, bonusVelocidade: 3);
    final megaCavaleiro = Heroi(
      nome: 'Mega Cavaleiro', 
      vida: 20, 
      escudo: 5, 
      velocidade: 10,
      reino: "numa casas muito engraçada, não tinha teto, não tinha nada",
      missao: "matar o matador dos matadores",
      raca: humano,
      arquetipo: arqueiro
    );

    final orc = Orc(bonusVida: 10, bonusAtaque: 8, bonusEscudo: 5);
    final guerreiro = Guerreiro(bonusVida: 6, bonusAtaque: 5, bonusEscudo: 4, bonusVelocidade: 5);
    final pekkaCaveleiro = Monstro(
      nome: 'Mostro ruim', 
      vida: 10, 
      escudo: 10, 
      velocidade: 13,
      origem: "Origem da terra",
      tipoCriatura: "Mágica",
      raca: orc,
      arquetipo: guerreiro
    );
    
    final duelo = Duelo(
      jogador1: megaCavaleiro,
      jogador2: pekkaCaveleiro,
      dado: dado,
    );
    duelo.iniciar();

  ]; 


  @override
  Widget build(Object context) {
    return ListView.builder(
      itemCount: _personagens.length,     //Se tiver 1000 valores
      itemBuilder: (context, index) {     //Aqui irá executar as 1000 vezez
        final personagem = _personagens(index); 
        return Text("teste ${personagem.nome}");
    });
  }

}