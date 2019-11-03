import 'package:flutter/material.dart';

class ListChatItem extends StatelessWidget {
  final String image, name, type, sendBy, lastMessage, timestamp, status;
  final int unread;

  const ListChatItem({
    Key key,
    @required this.image,
    @required this.name,
    @required this.type,
    @required this.sendBy,
    @required this.lastMessage,
    @required this.timestamp,
    @required this.status,
    @required this.unread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 15.0,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    this.image,
                  ),
                  fit: BoxFit.fitHeight,
                )),
          ),
          Container(
            width: size.width - 102,
            height: 80,
            margin: const EdgeInsets.only(right: 12.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[300],
                  width: 1.0,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        this.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18.0),
                      ),
                      Text(
                        this.timestamp,
                        style: TextStyle(color: Colors.grey[500], fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    (this.sendBy == "Me")
                        ? Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Icon(
                                  Icons.done_all,
                                  color: Colors.grey[500],
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                this.lastMessage,
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          )
                        : Text(
                            (this.type == "group")
                                ? this.sendBy + ": " + this.lastMessage
                                : this.lastMessage,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16.0,
                            ),
                          ),
                    Row(
                      children: <Widget>[
                        (this.status != "none")
                            ? ((this.status == "pinned")
                                ? Container(
                                    height: 21.0,
                                    width: 22.0,
                                    margin: const EdgeInsets.only(right: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(Icons.lock, size: 13.0, color: Colors.white,)
                                    ),
                                  )
                                : Container(
                                    height: 21.0,
                                    width: 22.0,
                                    margin: const EdgeInsets.only(right: 5.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(Icons.volume_off, size: 18.0, color: Colors.grey[400],)
                                    ),
                                  ))
                            : Container(),
                        (this.unread > 0)
                            ? Container(
                                height: 21.0,
                                width: 22.0,
                                margin: const EdgeInsets.only(right: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    this.unread.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
