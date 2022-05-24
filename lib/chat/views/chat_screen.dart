import 'package:agoravideocall/chat/views/video_call_screen.dart';
import 'package:agoravideocall/chat/widgets/message_bubble.dart';
import 'package:agoravideocall/chat/widgets/message_text_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const VideoCallScreen()),
            ),
            icon: const Icon(Icons.video_camera_front),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 16),
              reverse: true,
              itemCount: _message.length,
              itemBuilder: (_, index) => _message[index],
              separatorBuilder: (_, __) => const SizedBox(
                height: 16,
              ),
            ),
          ),
          const MessageTextField(),
        ],
      ),
    );
  }
}

const _message = <MessageBubble>[
  MessageBubble(
      profileImageUrl:
          'https://cdn2.vectorstock.com/i/1000x1000/20/76/man-avatar-profile-vector-21372076.jpg',
      message: 'This app would be perfect if it had video chat',
      date: 'May 24, 13:30'),
  MessageBubble(
      message: 'And adding some AR to this app', date: 'May 24, 13:31'),
  MessageBubble(
      profileImageUrl:
          'https://cdn2.vectorstock.com/i/1000x1000/20/76/man-avatar-profile-vector-21372076.jpg',
      message: 'I want to be the winner',
      date: 'May 24, 13:32'),
];
