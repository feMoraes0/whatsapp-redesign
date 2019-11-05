import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/data/data.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List<Map<String, dynamic>> stories;

  @override
  void initState() {
    super.initState();
    setState(() {
      this.stories = new Data().getStories();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: size.width,
            padding: const EdgeInsets.all(10.0),
            color: Colors.grey[300],
            child: Text(
              "Viewed updateds",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[600]
              ),
            ),
          )
        ],
      ),
    );
  }
}
