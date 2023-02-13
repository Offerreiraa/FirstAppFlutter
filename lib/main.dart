import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é sua cor favorita?',
        'resposta': ['Preto', 'Verde', 'Vermelho', 'Branco'],
      },
      {
        'texto': 'Qual é seu animal favorito?',
        'resposta': ['Coelho', 'Cobra', 'Cachorro', 'Gato'],
      },
      {
        'texto': 'Qual é seu professor favorito?',
        'resposta': ['Paulo', 'Renato', 'Douglas', 'Astarote'],
      },
    ];

    List<Widget> respostas = [];

    for (String textResp in perguntas[_perguntaSelecionada].cast()['resposta']) {
      respostas.add(Resposta(textResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Perguntas', textAlign: TextAlign.center)),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas,
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
