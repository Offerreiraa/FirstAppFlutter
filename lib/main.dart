import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual é sua cor favorita?',
      'resposta': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Verde', 'nota': 5},
        {'texto': 'Vermelho', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'resposta': [
        {'texto': 'Coelho', 'nota': 2},
        {'texto': 'Cobra', 'nota': 4},
        {'texto': 'Cachorro', 'nota': 5},
        {'texto': 'Gato', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é seu professor favorito?',
      'resposta': [
        {'texto': 'Paulo', 'nota': 3},
        {'texto': 'Renato', 'nota': 2},
        {'texto': 'Douglas', 'nota': 1},
        {'texto': 'Astarote', 'nota': 5},
      ],
    },
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Perguntas', textAlign: TextAlign.center)),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : const Resultado(),
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
