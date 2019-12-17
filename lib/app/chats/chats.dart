import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  final List<Map<String, dynamic>> chats = [
    {
      'name': 'Flutter Devs',
      'image': 'images/group-001.jpg',
      'message': 'The easiest way to develop.',
      'unread': 9,
      'type': 'group',
      'hour': '10:20 PM',
    },
    {
      'name': 'Alvo Dumbledore',
      'image': 'images/profile-001.jpg',
      'message': 'It matters not what someone is born, but what they grow to be.',
      'unread': 2,
      'type': 'person',
      'hour': '9:15 PM',
      'status': 'online',
      'stories': false,
    },
    {
      'name': 'Family',
      'image': 'images/group-002.jpg',
      'message': 'Good morning family!',
      'unread': 9,
      'type': 'group',
      'hour': '8:00 PM',
    },
    {
      'name': 'Gandalf',
      'image': 'images/profile-002.jpg',
      'message': 'A wizard Is Never Late, Nor Is He Early. He Arrives Precisely When He Means To',
      'unread': 0,
      'type': 'person',
      'hour': '7:58 PM',
      'status': 'online',
      'stories': true,
    },
    {
      'name': 'Pennywise',
      'image': 'images/profile-003.jpg',
      'message': 'Did you see Georgie? MUAHAHA',
      'unread': 0,
      'type': 'person',
      'hour': '6:23 PM',
      'status': 'online',
      'stories': true,
    },
    {
      'name': 'Johnizinho',
      'image': 'images/profile-004.jpg',
      'message': 'Close your eyes. And whatever happens, don\'t look.',
      'unread': 1,
      'type': 'person',
      'hour': '11:30 AM',
      'status': 'online',
      'stories': false,
    },
    {
      'name': 'Saruman',
      'image': 'images/profile-005.jpg',
      'message': 'I gave you the chance of aiding me willingly, but you have elected the way of pain.',
      'unread': 0,
      'type': 'person',
      'hour': '4:29 AM',
      'status': 'online',
      'stories': false,
    },
    {
      'name': 'Thanos',
      'image': 'images/profile-006.png',
      'message': 'Half destruction just solve half problem.',
      'unread': 0,
      'type': 'person',
      'hour': '2:01 AM',
      'status': 'online',
      'stories': false,
    },
    {
      'name': 'University',
      'image': 'images/group-003.jpg',
      'message': 'I forgot the homework again.',
      'unread': 8,
      'type': 'group',
      'hour': '0:56 AM',
    },
    {
      'name': 'Tonynho',
      'image': 'images/profile-007.jpg',
      'message': 'Talk to Thanos that I\'m iron man.',
      'unread': 0,
      'type': 'person',
      'hour': '2:01 AM',
      'status': 'online',
      'stories': true,
    },
    {
      'name': 'Doctor',
      'image': 'images/profile-008.jpg',
      'message': 'I\'m not a real doctor',
      'unread': 0,
      'type': 'person',
      'hour': '2:01 AM',
      'status': 'online',
      'stories': true,
    },
  ];

  Widget callSwipe(ThemeData theme) {
    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 4.0,
                  offset: Offset(4.0, 4.0),
                )
              ]
            ),
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.video_call, size: 25.0, color: Colors.white,),
          ),
        ],
      ),
    );
  }

  Widget messageSwipe(ThemeData theme) {
    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 4.0,
                  offset: Offset(4.0, 4.0),
                )
              ]
            ),
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.phone, size: 25.0, color: Colors.white,),
          ),
        ],
      ),
    );
  }

  Widget renderChat(Map<String, dynamic> chat, ThemeData theme) {
    return Dismissible(
      key: Key(chat['name']),
      background: this.callSwipe(theme),
      secondaryBackground: this.messageSwipe(theme),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(chat['image']),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          chat['name'],
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        (chat['unread'] > 0) ? Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: theme.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '${chat['unread']}',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        ) : Container(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            chat['message'],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            chat['hour'],
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'WhatsApp',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: this.chats.length,
              itemBuilder: (BuildContext context, int index) {
                return this.renderChat(this.chats[index], theme);
              },
            ),
          ),
        ],
      ),
    );
  }
}
