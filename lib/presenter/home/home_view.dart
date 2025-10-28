import 'package:flutter/material.dart';
import 'package:rpg_app/presenter/arena/arena_view.dart';
import 'package:rpg_app/presenter/historicoBatalhas/historioco_batalhas_view.dart';
import 'package:rpg_app/presenter/personagem/personagem_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _itemSelecionado = 0;
  final List<Widget> _telas = [
    const ArenaView(),
    PersonagensView(),
    const HistoriocoBatalhasView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RPG Futurístico"),
        backgroundColor: const Color.fromARGB(255, 207, 230, 249),
        centerTitle: true,
      ),
      body: _telas[_itemSelecionado],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _itemSelecionado,
        onTap: (index) {       //Utilizado para tocar no icone e selecionar
          setState(() {
            _itemSelecionado = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.stadium), label: "Arena"
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.person), label: "Personagens"
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.history), label: "Histórico de batalhas"
          ),
        ],
      ),  
    );
  }
}
