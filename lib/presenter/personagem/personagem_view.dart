import 'package:flutter/material.dart';
import 'package:rpg_app/domain/entities/alienigenas.dart';
import 'package:rpg_app/domain/entities/heroi.dart';
import 'package:rpg_app/domain/entities/humano.dart';
import 'package:rpg_app/domain/entities/monstro.dart';
import 'package:rpg_app/domain/entities/personagem.dart';
import 'package:rpg_app/domain/entities/samurai.dart';
import 'package:rpg_app/presenter/cadastroPersonagem/cadastroPersonagem_view.dart';

class PersonagensView extends StatelessWidget {
  PersonagensView({super.key});

  final List<Personagem> _personagens = [
    Monstro(
      origem: 'Cuiabá',
      tipoCriatura: 'Satanás',
      nome: 'João',
      vida: 100,
      escudo: 100,
      velocidade: 100,
      raca: Alienigenas(bonusAtaque: 100, bonusEscudo: 100, bonusVida: 100),
      arquetipo: Samurai(bonusVida: 100, bonusAtaque: 100, bonusEscudo: 100, bonusVelocidade: 100)
    ),

    Heroi(
      nome: 'João 2',
      vida: 100,
      escudo: 100,
      velocidade: 100,
      raca: Humano(bonusAtaque: 100, bonusEscudo: 100, bonusVida: 100), 
      arquetipo: Samurai(bonusVida: 100, bonusAtaque: 100, bonusEscudo: 100, bonusVelocidade: 100),
      reino: 'Sem teto', 
      missao: 'Matar o João'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _contruirLista(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), 
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => CadastroPersonagemView()
            )
          );
        }
      ),
    );
  }

  Widget _contruirLista() {
    return ListView.builder(
      itemCount: _personagens.length,
      itemBuilder: (context, index) {
        final personagem = _personagens[index];
        return ListTile(
          title: Text('Teste ${personagem.nome}'),
          subtitle: Text('Eu sou um subtítulo'),
        );
      },
    );
  }

}