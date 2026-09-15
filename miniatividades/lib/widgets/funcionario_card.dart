import 'package:flutter/material.dart';

class FuncionarioCard extends StatelessWidget {
  const FuncionarioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              'assets/perfil.jpg',
              width: 80,
              height: 80,
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Marcos Vinícius',
                  style: TextStyle(fontSize: 18),
                ),
                Text('Desenvolvedor'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}