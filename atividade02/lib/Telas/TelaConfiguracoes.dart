import 'package:flutter/material.dart';

class TelaConfiguracoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Configuração'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(246, 152, 125, 233),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.settings,
              size: 30,
            ),

            Text(
              'Esta aba é responsável pelos itens configurados no aplicativo, bem como pelo seu gerenciamento.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              child: const Text('Voltar à Tela Inicial'),
            ),
          ],
        ),
      ),
    );
  }
}
