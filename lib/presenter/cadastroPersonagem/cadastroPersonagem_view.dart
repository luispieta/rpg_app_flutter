import 'package:flutter/material.dart';

class CadastropersonagemView extends StatelessWidget {
  const CadastropersonagemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar Personagem"),
        centerTitle: true,
      ),
      body: Column(
        children: [CampoFlutuanteRaca(), const CampoFlutuanteArquetipo()] 
      ),
    );
  }
}

class CampoFlutuanteArquetipo extends StatefulWidget {
  const CampoFlutuanteArquetipo({super.key});

  @override
  State<CampoFlutuanteArquetipo> createState() => _CampoFlutuanteArquetipoState();
}

class _CampoFlutuanteArquetipoState extends State<CampoFlutuanteArquetipo> {
  String? dropdownValue = "Escolha um arquetipo"; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: "Arquétipo",
            border: OutlineInputBorder(),
          ),  
          hint: const Text("Escolha o arquétipo"), 
          value: dropdownValue, 
          items: <String>["Escolha um arquetipo", "Samurai", "Hacker", "Cibernético"]
              .map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
        ),
      ),
    );
  }
}


class CampoFlutuanteRaca extends StatefulWidget {
  const CampoFlutuanteRaca({super.key});

  @override
  State<CampoFlutuanteRaca> createState() => _CampoFlutuanteRacaState();
}

class _CampoFlutuanteRacaState extends State<CampoFlutuanteRaca> {
  String? dropdownValue = "Escolha um raça"; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: "Raça",
            border: OutlineInputBorder(),
          ),  
          hint: const Text("Escolha o raça"), 
          value: dropdownValue, 
          items: <String>["Escolha um raça", "Humano", "Android", "Alienígena"]
              .map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
        ),
      ),
    );
  }
}
