import 'package:flutter/material.dart';

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
      return "assets/images/humano.png";

    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
    );
  }

}