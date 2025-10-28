import 'package:flutter/material.dart';
import 'package:rpg_app/presenter/cadastroPersonagem/tagWidget.dart';

class Cards extends StatefulWidget {
  final String texto;  
  final int pontos;

  const Cards({
    super.key, required this.texto, required this.pontos
  });
  
  @override
  State<StatefulWidget> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  int base = 0;

  void _diminuir() {
    setState(() {
      if (base > 0) {
        base--;
      }
    });
  }

  void _aumentar() {
    setState(() {
      base++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.texto,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "${widget.pontos} pontos",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 6),
            LinearProgressIndicator(
              value: (widget.pontos + base) / 100, // apenas ilustrativo
              backgroundColor: Colors.grey.shade200,
              color: Colors.blue.shade600,
              minHeight: 6,
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              //Tag
              children: [
                TagWidget(texto: "Base", cor: Colors.blueGrey),
                TagWidget(texto: "Raça", cor: Colors.pink.shade200),
                TagWidget(texto: "Arquétipo",cor: Colors.grey.shade700),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: _diminuir,
                      icon: const Icon(Icons.remove_circle_outline),
                    ),
                    Text("$base pontos"),
                  ],
                ),
                IconButton(
                  onPressed: _aumentar,
                  icon: const Icon(Icons.add_circle_outline),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}