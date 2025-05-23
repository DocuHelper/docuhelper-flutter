import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/queries/chat.graphql.dart';
import 'package:docuhelper_flutter/docuhelper/queries/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class ChatSendArea extends HookWidget {
  const ChatSendArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = useTextEditingController();
    final appState = context.watch<DocuhelperAppState>();

    return Mutation$SendChat$Widget(
      builder: (runMutation, result) {
        return Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.emoji_emotions_outlined),
                onPressed: () {},
              ),
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: '메시지를 입력하세요',
                    fillColor: Colors.grey[200],
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.send, color: Colors.white),
                  onPressed: () {
                    print(controller.text);
                    final targetDocument = appState.selectedDocument?.uuid;
                    if(targetDocument == null) {
                      return;
                    }
                    runMutation(
                      Variables$Mutation$SendChat(
                        query: Input$ChatSendRequestInput(
                            ask: controller.text, document: targetDocument),
                      ),
                    );
                    controller.clear();
                  },
                ),
              ),
            ],
          ),
        );
      },
      options: WidgetOptions$Mutation$SendChat(),
    );
    // return
  }
}
