import 'package:flutter/material.dart';

class ModelsPage extends StatelessWidget {
  const ModelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final modelos = [
      "Modelo de Orquídeas Machu Picchu v1",
      "Modelo de Plantas Tropicales v2",
      "Modelo General de Hojas v1.5",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Modelos de Entrenamiento"),
        backgroundColor: const Color(0xFF2980B9),
      ),
      body: ListView.builder(
        itemCount: modelos.length,
        itemBuilder: (_, i) => ListTile(
          leading: const Icon(Icons.science, color: Color(0xFF1ABC9C)),
          title: Text(modelos[i]),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
