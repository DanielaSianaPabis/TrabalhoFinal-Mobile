import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Chaves SharedPreferences
const String nomeKey = 'nome';
const String idadeKey = 'idade';

class tela01 extends StatefulWidget {
  const tela01({super.key});

  @override
  State<tela01> createState() => _tela01State();
}

class _tela01State extends State<tela01> {
  final TextEditingController controllerNome = TextEditingController();
  final TextEditingController controllerIdade = TextEditingController();

  String nome = 'Null';
  String idade = 'Null';

  Future<void> saveData() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    final nomeAtualizado = controllerNome.text.isEmpty ? 'Null' : controllerNome.text;
    final idadeAtualizada = controllerNome.text.isEmpty ? 'Null' : controllerIdade.text;

    await shared.setString(nomeKey, nomeAtualizado);
    await shared.setString(idadeKey, idadeAtualizada);

    // Atualiza as variáveis
    nome = nomeAtualizado;
    idade = idadeAtualizada;

    // Atualiza a tela
    setState(() {});
  }

  // Método para carregar/buscar os dados
  Future<void> loadData() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    setState(() {
      nome = shared.getString(nomeKey) ?? 'Null';
      idade = shared.getString(idadeKey) ?? 'Null';
    });
  }

  // Carrega os dados (loadData) assim que carrega a tela
  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 03'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(246, 152, 125, 233),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: controllerNome,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Digite seu nome',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: controllerIdade,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Idade',
                  hintText: 'Digite sua idade',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: saveData,
                  child: const Text('Salvar Dados'),
                ),
              ),
              const SizedBox(height: 25),
              // Exibe os valores diretamente
              Text(
                "-- Dados armazenados --",
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                "Nome: $nome",
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                "Idade: $idade",
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
