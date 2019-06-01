import 'package:flutter/material.dart';
import 'package:flutter_hack_project/detail_screen.dart';

class FeedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Feed section"),
        RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(articleId: 0)),
            );
          },
        ),
      ],
    );
  }
}
