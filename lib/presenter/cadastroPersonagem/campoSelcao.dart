import 'package:flutter/material.dart';

class CampoSelecao extends StatelessWidget{
  final String texto;
  final List listas;
  final String textoSelecionado;
  final ValueChanged<String?> onChange;

  const CampoSelecao({
    super.key,
    required this.texto,
    required this.listas,
    required this.textoSelecionado,
    required this.onChange
  });

  String get pronome => texto == "Raça" ? "uma" : "um";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: texto,
                border: const OutlineInputBorder(),
              ),  
              hint: Text("Escolha $pronome $texto"), 
              value: textoSelecionado, 
              items: listas.map((lista) {
                return DropdownMenuItem<String>(
                  value: lista,
                  child: Text(lista),
                );
              }).toList(),
              onChanged: onChange,
            ),
          ]
      ),
    );
  }
}