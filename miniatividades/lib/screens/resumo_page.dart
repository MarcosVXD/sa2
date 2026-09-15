import 'package:flutter/material.dart';

class ResumoPage extends StatelessWidget {
  final String nome;
  final String cidade;

  const ResumoPage({
    super.key,
    required this.nome,
    required this.cidade,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumo'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/perfil.jpg',
                    width: 120,
                    height: 120,
                  ),

                  const SizedBox(height: 20),

                  Text(
                    'Nome: $nome',
                    style: const TextStyle(fontSize: 20),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    'Cidade: $cidade',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          ListTile(
            leading: const Icon(Icons.person),
            title: Text(nome),
            subtitle: Text(cidade),
          ),
        ],
      ),
    );
  }
}