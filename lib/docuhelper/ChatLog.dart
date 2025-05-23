import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatLog extends StatelessWidget {
  const ChatLog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<DocuhelperAppState>();
    return SingleChildScrollView(
      child: Column(
        children: appState.userChatHistory.map(
          (e) {
            return Chat(question: e.userAsk, answer: e.result ?? "뒤적뒤적");
          },
        ).toList(),
      ),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({super.key, required this.question, required this.answer});

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatQuestion(text: question),
        ChatAnswer(text: answer),
      ],
    );
  }
}

class ChatQuestion extends StatelessWidget {
  const ChatQuestion({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ChatCard(text: text),
      ],
    );
  }
}

class ChatAnswer extends StatelessWidget {
  const ChatAnswer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [ChatCard(text: text)],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width * 0.7;
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            softWrap: true,
          ),
        ),
      ),
    );
  }
}
