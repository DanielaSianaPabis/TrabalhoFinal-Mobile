import 'package:flutter/material.dart';

class TelaDetalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Detalhes'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(246, 152, 125, 233),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Este aplicativo realiza a transição entre três telas.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/configuracoes');
              },
              child: const Text('Acessar as Configurações'),
            ),
          ],
        ),
      ),
    );
  }
}
