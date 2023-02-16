import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual é sua cor favorita?',
      'resposta': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Verde', 'pontuacao': 5},
        {'texto': 'Vermelho', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'resposta': [
        {'texto': 'Coelho', 'pontuacao': 2},
        {'texto': 'Cobra', 'pontuacao': 4},
        {'texto': 'Cachorro', 'pontuacao': 5},
        {'texto': 'Gato', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é seu professor favorito?',
      'resposta': [
        {'texto': 'Paulo', 'pontuacao': 3},
        {'texto': 'Renato', 'pontuacao': 2},
        {'texto': 'Douglas', 'pontuacao': 1},
        {'texto': 'Astarote', 'pontuacao': 5},
      ],
    },
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
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
            : Resultado(_pontuacaoTotal),
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
