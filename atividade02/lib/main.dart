import 'package:atividade02/Telas/TelaConfiguracoes.dart';
import 'package:atividade02/Telas/TelaDetalhes.dart';
import 'package:atividade02/Telas/TelaInicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        '/': (context) => TelaInicial(),
        '/detalhes': (context) => TelaDetalhes(),
        '/configuracoes': (context) => TelaConfiguracoes(),
      },
    );
  }
}
