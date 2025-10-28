import 'package:flutter/material.dart';
import 'package:rpg_app/presenter/cadastroPersonagem/campoSelcao.dart';
import 'package:rpg_app/presenter/cadastroPersonagem/cards.dart';

class CadastropersonagemView extends StatelessWidget {
  const CadastropersonagemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar Personagem"),
        backgroundColor: const Color.fromARGB(255, 207, 230, 249),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CampoSelecao(), 
            const Cards(texto: "Vida", pontos: 50),
          ] 
        )
      ) 
    );
  }
}