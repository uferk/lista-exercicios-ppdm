import 'package:flutter/material.dart';

import 'exercicio1.dart';
import 'exercicio2.dart';
import 'exercicio3.dart';

void main() {
  runApp(const ListaExerciciosApp());
}

class ListaExerciciosApp extends StatelessWidget {
  const ListaExerciciosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Exercícios PPDM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MenuPrincipal(),
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Exercícios PPDM')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercicio1()),
                  );
                },
                child: const Text('Exercício 1 - Meu Perfil Dev'),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercicio2()),
                  );
                },
                child: const Text('Exercício 2 - Catálogo'),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercicio3()),
                  );
                },
                child: const Text('Exercício 3 - Cadastro'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
