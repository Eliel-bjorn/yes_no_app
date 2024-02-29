import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yes_no_app/screens/chat/witdgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/screens/chat/witdgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/screens/chat/witdgets/shared/message_field.dart';

class chatScreen extends StatelessWidget {
  const chatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://styles.redditmedia.com/t5_3is08/styles/communityIcon_i0bub98epp4a1.png'),
          ),
        ),
        title: const Text('mi amor'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),

            //caja de texto
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
