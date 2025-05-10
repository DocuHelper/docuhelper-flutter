import 'package:flutter/material.dart';

class ChatSendArea extends StatelessWidget {
  const ChatSendArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Row(
          children: [
            Icon(Icons.article),
            SizedBox(width: 15,),
            Expanded(
                child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)))))),
            SizedBox(width: 15,),
            Icon(Icons.send),
          ],
        ),
      ),
    );
  }
}
