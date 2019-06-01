import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreenState extends State<DetailScreen> {
  String articleUrl = 'https://google.com';
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("I'm An Article Title"),
          actions: <Widget>[
            // Add 3 lines from here...
            IconButton(
              icon: Icon(isFavourite ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                setState(() {
                  if (isFavourite) {
                    isFavourite = false;
                  } else {
                    isFavourite = true;
                  }
                });
              },
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Image.asset("image-1.jpg"),
            Row(
              children: <Widget>[
                Spacer(),
                Container(
                  child: FloatingActionButton(
                    child: Icon(Icons.screen_share),
                    onPressed: () {
                      launch(articleUrl);
                    },
                  ),
                  transform: Matrix4.translationValues(-16.0, -30.0, 0.0),
                ),
              ],
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              child: Column(
                children: <Widget>[
                  Table(
                    children: <TableRow>[
                      TableRow(children: [
                        Text("Summary:"),
                        Text("A summary of the article")
                      ]),
                      TableRow(
                          children: [Text("Tags:"), Text("Learning, Images")]),
                      TableRow(children: [Text("Likes:"), Text("224")])
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class DetailScreen extends StatefulWidget {
  @override
  DetailScreenState createState() => DetailScreenState();
}
