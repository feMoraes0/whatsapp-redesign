import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/data/data.dart';
import 'package:whatsapp_clone/app/screens/chats/list_chat_item.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<Map<String, dynamic>> jsonData;

  initState() {
    super.initState();
    this.setState(() {
      this.jsonData = new Data().getChats();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 80.0),
        itemCount: jsonData.length,
        itemBuilder: (context, index) {
          var chat = jsonData[index];
          return ListChatItem(
            image: chat["image"],
            name: chat["name"],
            type: chat["type"],
            sendBy: chat["send_by"],
            lastMessage: chat["last_message"],
            timestamp: chat["timestamp"],
            status: chat["status"],
            unread: chat["unread"],
          );
        },
      ),
    );
  }
}

