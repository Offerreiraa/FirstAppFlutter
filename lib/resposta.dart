import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecionado;

  const Resposta(this.texto, this.onSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onSelecionado, child: Text(texto));
  }
}
