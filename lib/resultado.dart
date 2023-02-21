import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario,
      {super.key});

  String? get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens!';
    } else if (pontuacao < 12) {
      return 'Top';
    } else if (pontuacao < 15) {
      return 'Maneiro';
    } else {
      return 'Que Pro';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado!, style: const TextStyle(fontSize: 28)),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          style: TextButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 27, 115, 230)),
          child: const Text('Reiniciar'),
        ),
      ],
    );
  }
}
