import 'package:flutter/material.dart';

class tela01 extends StatefulWidget {
  const tela01({super.key});

  @override
  State<tela01> createState() => _tela01State();
}

class _tela01State extends State<tela01> {
  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 01'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(246, 152, 125, 233),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
            
            //Campo do Nome
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira seu nome e sobrenome';
                  }
                  if (!value.contains(" ")) {
                    return 'Insira ao menos um sobrenome';
                  }
                  return null;
                },
                controller: controllerNome,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Digite seu nome',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 16
                ),

              // Campo do E-mail
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira um e-mail';
                  }
                  if (!value.contains("@")) {
                    return 'Insira o "@"';
                  }
                  if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
                    return 'Insira um domínio válido';
                  }
                  return null;
                },
                controller: controllerEmail,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'Digite seu e-mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 16
                ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    _send();
                    //print("Botão clicado");
                  },
                  child: const Text('Enviar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _send() async {
    if (_formKey.currentState!.validate()) {
      print("Formulário enviado com sucesso!");
    } else {
      print("Dado(s) inválido(s)!");
    }
  }
}
