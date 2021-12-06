import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    var respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : null;

    return Center(
      child: Column(children: [
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas!
            .map((resp) => Resposta(resp['texto'] as String,
                () => responder(resp['pontuacao'] as int)))
            .toList()
      ]),
    );
  }
}
