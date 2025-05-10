import 'package:flutter/material.dart';

class ChatLog extends StatelessWidget {
  const ChatLog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Chat(question: "안녕", answer: "반가워"),
          Chat(question: "안녕", answer: "반가워"),
          Chat(question: "안녕", answer: "반가워"),
          Chat(question: "안녕", answer: "반가워"),
          Chat(question: "안녕", answer: "반가워"),
          Chat(question: "안녕", answer: "반가워"),
          Chat(question: "안녕", answer: "반가워"),
          Chat(question: "안녕", answer: "반가워"),
          Chat(question: "안녕", answer: "반가워"),
        ],
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
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }
}
