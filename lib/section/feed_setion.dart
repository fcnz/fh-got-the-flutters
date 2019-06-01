import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
        Row(
          children: <Widget>[Text(category.title), Spacer()],
        ),
        CarouselSlider(
            height: 150,
            viewportFraction: 0.4,
            aspectRatio: 16 / 9,
            items: category.articles.map((article) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      child: FlatButton(
                    child: Image.network(article.imageUrl),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  articleId: article.id,
                                )),
                      );
                    },
                  ));
                },
              );
            }).toList())
      ],
    );
  }
}

class FeedSection extends StatefulWidget {
  @override
  _FeedSectionState createState() => _FeedSectionState();
}
