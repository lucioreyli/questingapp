import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  Resposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelecao,
        child: Text(texto),
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 16,
            ),
            primary: Colors.blue,
            onPrimary: Colors.white),
      ),
    );
  }
}
