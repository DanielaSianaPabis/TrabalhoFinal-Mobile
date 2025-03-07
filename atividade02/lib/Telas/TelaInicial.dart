import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(246, 152, 125, 233),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aplicativo de Navegação Entre Telas.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
              ),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/detalhes');
              },
              child: const Text('Acessar os Detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}
