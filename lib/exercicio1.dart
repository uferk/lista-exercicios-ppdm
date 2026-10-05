import 'package:flutter/material.dart';

class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meu Perfil Dev')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                child: Icon(Icons.person, size: 60),
              ),

              const SizedBox(height: 20),

              const Text(
                'Gustavo Rodrigues Souza',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Text(
                'Técnico em Desenvolvimento de Sistemas',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              Row(
                children: const [
                  Icon(Icons.person),
                  SizedBox(width: 10),
                  Text(
                    'Nome: Gustavo Rodrigues Souza',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                children: const [
                  Icon(Icons.nightlight),
                  SizedBox(width: 10),
                  Text('Turno: Noturno', style: TextStyle(fontSize: 18)),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                children: const [
                  Icon(Icons.school),
                  SizedBox(width: 10),
                  Text('Turma: T2DEV-T3', style: TextStyle(fontSize: 18)),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                children: const [
                  Icon(Icons.email),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'E-mail: gustavo.r.souza22@aluno.senai.br',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
