import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_hack_project/data/article.dart';
import 'package:flutter_hack_project/data/category.dart';
import 'package:flutter_hack_project/data/repository.dart';
import 'package:flutter_hack_project/detail_screen.dart';

class _FeedSectionState extends State<FeedSection> {
  List<Category> cats = Repository.categories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: cats.length,
      itemBuilder: (context, i) {
        Category category = cats[i];
        return _buildCarousel(category);
      },
    );
  }

  Widget _buildCarousel(Category category) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Text(category.title,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))
        ),
        CarouselSlider(
            viewportFraction: 1 / 3,
            items: category.articles.map((article) {
              return Builder(
                builder: (BuildContext context) {
                  return _buildCard(article);
                },
              );
            }).toList())
      ],
    );
  }

  Widget _buildImage(imageUrl) {
    return SizedBox(
        width: 125,
        height: 125,
        child: Image.network(imageUrl, fit: BoxFit.contain));
  }

  Widget _buildCard(Article article) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
        child: Column(children: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              GestureDetector(
                child: _buildImage(article.imageUrl),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              articleId: article.id,
                            )),
                  );
                },
              ),
              IconButton(
                icon: Icon(article.isFavourite
                    ? Icons.favorite
                    : Icons.favorite_border),
                onPressed: () {
                  setState(() {
                    if (article.isFavourite) {
                      article.isFavourite = false;
                    } else {
                      article.isFavourite = true;
                    }
                  });
                },
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(article.title,
                overflow: TextOverflow.ellipsis, maxLines: 3),
          ),
        ]));
  }
}

class FeedSection extends StatefulWidget {
  @override
  _FeedSectionState createState() => _FeedSectionState();
}
