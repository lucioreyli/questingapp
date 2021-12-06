import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultado;
  final void Function() reiniciarQuestionario;

  Resultado(this.resultado, this.reiniciarQuestionario);

  String get fraseResultado {
    if (resultado < 8) {
      return 'Parabéns';
    } else if (resultado < 20) {
      return 'Você é bom';
    } else if (resultado < 30) {
      return 'Você é incrível!';
    } else {
      return 'Você é imparável';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(fraseResultado,
                style: const TextStyle(fontSize: 28),
                textAlign: TextAlign.center)),
        TextButton(
            onPressed: reiniciarQuestionario,
            child: const Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ))
      ],
    );
  }
}
