import 'package:flutter/material.dart';

class Exercicio3 extends StatefulWidget {
  const Exercicio3({super.key});

  @override
  State<Exercicio3> createState() => _Exercicio3State();
}

class _Exercicio3State extends State<Exercicio3> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController profissaoController = TextEditingController();

  String nome = '';
  String profissao = '';

  void cadastrar() {
    setState(() {
      nome = nomeController.text;
      profissao = profissaoController.text;
    });
  }

  @override
  void dispose() {
    nomeController.dispose();
    profissaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Cadastro de Desenvolvedor',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 25),

            TextFormField(
              controller: nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: profissaoController,
              decoration: const InputDecoration(
                labelText: 'Profissão / Cargo desejado',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.work),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: cadastrar,
                child: const Text('Cadastrar'),
              ),
            ),

            const SizedBox(height: 30),

            if (nome.isNotEmpty && profissao.isNotEmpty)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Icon(Icons.waving_hand, size: 45),

                      const SizedBox(height: 10),

                      Text(
                        'Bem-vindo(a), $nome!',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        'Cargo cadastrado: $profissao',
                        style: const TextStyle(fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
