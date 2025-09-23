import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vamo"),
      ),
      body: Center(
        child: Text("Aiiii"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Botão do bom");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
