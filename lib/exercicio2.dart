import 'package:flutter/material.dart';

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  final List<Map<String, dynamic>> tecnologias = const [
    {
      'titulo': 'Flutter',
      'descricao': 'Framework para desenvolvimento de aplicativos.',
      'icone': Icons.phone_android,
    },
    {
      'titulo': 'Dart',
      'descricao': 'Linguagem de programação utilizada pelo Flutter.',
      'icone': Icons.code,
    },
    {
      'titulo': 'JavaScript',
      'descricao': 'Linguagem muito utilizada no desenvolvimento Web.',
      'icone': Icons.javascript,
    },
    {
      'titulo': 'PHP',
      'descricao': 'Linguagem utilizada principalmente no Back-End.',
      'icone': Icons.web,
    },
    {
      'titulo': 'MySQL',
      'descricao': 'Sistema de gerenciamento de banco de dados.',
      'icone': Icons.storage,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catálogo de Tecnologias')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: tecnologias.length,
        itemBuilder: (context, index) {
          final tecnologia = tecnologias[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(tecnologia['icone'], size: 35),
              title: Text(
                tecnologia['titulo'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(tecnologia['descricao']),
            ),
          );
        },
      ),
    );
  }
}
