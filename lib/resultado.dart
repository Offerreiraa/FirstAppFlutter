import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  const Resultado(this.pontuacao, {super.key});

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
    return Center(
      child: Text(fraseResultado!, style: const TextStyle(fontSize: 28)),
    );
  }
}
