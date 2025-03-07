import 'package:flutter/material.dart';
import 'package:atividade01/Telas/tela01.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: tela01(),
      debugShowCheckedModeBanner: false,
    );
  }
}
