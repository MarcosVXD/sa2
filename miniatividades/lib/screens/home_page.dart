import 'package:flutter/material.dart';
import '../utils/dados.dart';
import '../widgets/funcionario_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividades'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Cartão de Funcionário',
            style: TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 10),

          const FuncionarioCard(),

          const SizedBox(height: 30),

          const Text(
            'Lista de Funcionários',
            style: TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 10),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: funcionarios.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.person),
                title: Text(funcionarios[index].nome),
                subtitle: Text(funcionarios[index].profissao),
              );
            },
          ),

          const SizedBox(height: 30),

          const Text(
            'Lista de Produtos',
            style: TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 10),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: produtos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: Text(produtos[index]),
              );
            },
          ),

          const SizedBox(height: 30),

          const Text(
            'Lista de Contatos',
            style: TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 10),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: contatos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.phone),
                title: Text(contatos[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}