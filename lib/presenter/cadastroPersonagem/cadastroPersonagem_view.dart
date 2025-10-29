import 'package:flutter/material.dart';
import 'package:rpg_app/presenter/cadastroPersonagem/campoSelcao.dart';
import 'package:rpg_app/presenter/cadastroPersonagem/cards.dart';

class CadastropersonagemView extends StatefulWidget {
  const CadastropersonagemView({super.key});

  @override
  State<StatefulWidget> createState() => _CadastropersonagemViewState();
}

class _CadastropersonagemViewState extends State<CadastropersonagemView> {

  String racaSelecionada = "Escolha uma raça";
  String arquetipoSelecionada = "Escolha um arquétipo";

  final racas = ["Escolha uma raça", "Humano", "Android", "Alienígena"];
  final arquetipos = ["Escolha um arquétipo", "Samurai", "Hacker", "Cibernético"];

  _imagemSelecionada () {
    if (racaSelecionada == "Humano" && arquetipoSelecionada == "Escolha um arquétipo") {
      return "assets/images/Humano.png";

    } else if (racaSelecionada == "Android" && arquetipoSelecionada == "Escolha um arquétipo") {
      return "assets/images/android.png";

    } else if (racaSelecionada == "Alienígena" && arquetipoSelecionada == "Escolha um arquétipo") {
      return "assets/images/alienigena.png";

    } else if (racaSelecionada == "Humano" && arquetipoSelecionada == "Samurai") {
      return "assets/images/humano_samurai.png";

    } else if (racaSelecionada == "Humano" && arquetipoSelecionada == "Hacker") {
      return "assets/images/humano_hacker.png";

    } else if (racaSelecionada == "Humano" && arquetipoSelecionada == "Cibernético") {
      return "assets/images/humano_cibernetico.png";

    } else if (racaSelecionada == "Android" && arquetipoSelecionada == "Samurai") {
      return "assets/images/android_samurai.png";

    } else if (racaSelecionada == "Android" && arquetipoSelecionada == "Hacker") {
      return "assets/images/android_hacker.png";

    } else if (racaSelecionada == "Android" && arquetipoSelecionada == "Cibernético") {
      return "assets/images/android_cibernetico.png";

    }  else if (racaSelecionada == "Alienígena" && arquetipoSelecionada == "Samurai") {
      return "assets/images/alienigena_samurai.png";

    } else if (racaSelecionada == "Alienígena" && arquetipoSelecionada == "Hacker") {
      return "assets/images/alienigena_hacker.png";

    } else if (racaSelecionada == "Alienígena" && arquetipoSelecionada == "Cibernético") {
      return "assets/images/alienigena_cibernetico.png";

    } else {
      return "assets/images/humano.png";
    }
  }

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
             Image.asset(
              _imagemSelecionada(),
            ),

            CampoSelecao(
              texto: "Raça", 
              listas: racas, 
              textoSelecionado: racaSelecionada,
              onChange: (value) { 
                setState(() => racaSelecionada = value!
              );},
            ),
            
            CampoSelecao(
              texto: "Arquétipo", 
              listas: arquetipos, 
              textoSelecionado: arquetipoSelecionada,
              onChange: (value) { 
                setState(() => arquetipoSelecionada = value!
              );},
            ),

            const Cards(texto: "Vida", pontos: 50),
            const Cards(texto: "Escudo", pontos: 50),
            const Cards(texto: "Velocidade", pontos: 50),
          ] 
        )
      ) 
    );
  }
}