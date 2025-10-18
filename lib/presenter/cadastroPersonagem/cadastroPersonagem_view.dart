import 'package:flutter/material.dart';
import 'package:rpg_app/domain/entities/arquetipo.dart';

class CadastropersonagemView extends StatelessWidget {
  const CadastropersonagemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar Personagem"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 128.0),
        child:Column(
          children: [
            const CampoSelecao(), 
          ] 
        ),
      ) 
    );
  }
}

class CampoSelecao extends StatefulWidget {
  const CampoSelecao({super.key});

  @override
  State<CampoSelecao> createState() => _CampoSelecaoState();
}

class _CampoSelecaoState extends State<CampoSelecao> {

  final racas = ["Escolha uma raça", "Humano", "Android", "Alienígena"];
  final arquetipos = ["Escolha um arquétipo", "Samurai", "Hacker", "Cibernético"];

  String? racaSelecionada = "Escolha uma raça";
  String? arquetipoSelecionada = "Escolha um arquétipo";

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
      return "assets/images/imagem_fundo.png";

    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            // Imagem atual
            Image.asset(
              _imagemSelecionada(),
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Raça",
                border: OutlineInputBorder(),
              ),  
              hint: const Text("Escolha uma raça"), 
              value: racaSelecionada, 
              items: racas.map((raca) {
                return DropdownMenuItem<String>(
                  value: raca,
                  child: Text(raca),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  racaSelecionada = newValue;
                });
              },
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Arquétipo",
                border: OutlineInputBorder(),
              ),  
              hint: const Text("Escolha um arquétipo"), 
              value: arquetipoSelecionada, 
              items: arquetipos.map((arquetipo) {
                return DropdownMenuItem<String>(
                  value: arquetipo,
                  child: Text(arquetipo),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  arquetipoSelecionada = newValue;
                });
              },
            ),
          ]
        ),
      ),
    );
  }

}

/*
class SelecaoPersonagemView extends StatefulWidget {
  const SelecaoPersonagemView({super.key});

  @override
  State<SelecaoPersonagemView> createState() => _SelecaoPersonagemViewState();
}

class _SelecaoPersonagemViewState extends State<SelecaoPersonagemView> {
  String? racaSelecionada;
  String? classeSelecionada;

  final racas = ['Humano', 'Elfo', 'Orc'];
  final classes = ['Guerreiro', 'Mago', 'Arqueiro'];

  String _obterImagem() {
    if (racaSelecionada == null || classeSelecionada == null) {
      return 'assets/images/default.png';
    }

    // Combinações possíveis (exemplo)
    if (racaSelecionada == 'Humano' && classeSelecionada == 'Guerreiro') {
      return 'assets/images/humano_guerreiro.png';
    } else if (racaSelecionada == 'Elfo' && classeSelecionada == 'Mago') {
      return 'assets/images/elfo_mago.png';
    } else if (racaSelecionada == 'Orc' && classeSelecionada == 'Arqueiro') {
      return 'assets/images/orc_arqueiro.png';
    }

    // Padrão caso não tenha combinação específica
    return 'assets/images/default.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seleção de Personagem"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Dropdown de Raça
            DropdownButton<String>(
              hint: const Text("Selecione a Raça"),
              value: racaSelecionada,
              isExpanded: true,
              items: racas.map((raca) {
                return DropdownMenuItem(
                  value: raca,
                  child: Text(raca),
                );
              }).toList(),
              onChanged: (valor) {
                setState(() {
                  racaSelecionada = valor;
                });
              },
            ),

            const SizedBox(height: 20),

            // Dropdown de Classe
            DropdownButton<String>(
              hint: const Text("Selecione a Classe"),
              value: classeSelecionada,
              isExpanded: true,
              items: classes.map((classe) {
                return DropdownMenuItem(
                  value: classe,
                  child: Text(classe),
                );
              }).toList(),
              onChanged: (valor) {
                setState(() {
                  classeSelecionada = valor;
                });
              },
            ),

            const SizedBox(height: 40),

            // Imagem atual
            Image.asset(
              _obterImagem(),
              height: 200,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
*/