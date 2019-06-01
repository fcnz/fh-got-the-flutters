import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'data/article.dart';
import 'data/repository.dart';

class DetailScreen extends StatefulWidget {
  Article article;

  DetailScreen({
    @required int articleId,
  }) {
    article = Repository.getArticle(articleId);
  }

  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.article.title),
          actions: <Widget>[
            // Add 3 lines from here...
            IconButton(
              icon: Icon(widget.article.isFavourite ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                setState(() {
                  if (widget.article.isFavourite) {
                    widget.article.isFavourite = false;
                  } else {
                    widget.article.isFavourite = true;
                  }
                });
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network(
                widget.article.imageUrl,
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  Container(
                    child: FloatingActionButton(
                      child: Icon(Icons.screen_share),
                      onPressed: () {
                        launch(widget.article.articleUrl);
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
                        TableRow(children: [Text("Summary:"), Text(widget.article.description)]),
                        TableRow(children: [Text("Tags:"), Text("Learning, Images")]),
                        TableRow(children: [Text("Likes:"), Text("224")])
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
