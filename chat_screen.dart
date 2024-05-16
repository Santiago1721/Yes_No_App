import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D4D03AQF_lxC2Drgh9g/profile-displayphoto-shrink_800_800/0/1708005268517?e=1720656000&v=beta&t=x556I94GdlLqxL8bJfpJ4dTWAboQ4r5hQrd99xJBH1c'),
          ),
        ),
        title: Text('Santiago Gutierrez'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return(index % 2 == 0)  //aqui se divide la pestaña de mensajes de un usuario y de otro, haciendo que se dividan entre
                  //dos, como si fuese una app de mensajeria, cuando uno envia un mensaje,el otro envia otro.
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
              })
            ),
           
            //Caja de texto
            const MessageFieldBox(),
            const Text('WECHAT')
          ],),
      ),
    );
  }
}
