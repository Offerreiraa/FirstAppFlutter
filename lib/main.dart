import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;  
    });
    // ignore: avoid_print
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {

    final List<String> perguntas = [
      'Qual é a sua cor favorita',
      'Qual é o seu animal favorito',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Perguntas', textAlign: TextAlign.center)),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
                onPressed: _responder, child: const Text('Resposta 1')),
            ElevatedButton(
                onPressed: _responder, child: const Text('Resposta 2')),
            ElevatedButton(
                onPressed: _responder, child: const Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}


class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
