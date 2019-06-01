import 'package:flutter_hack_project/data/article.dart';
import 'package:meta/meta.dart';

class Category {
  int id;
  String title;
  List<Article> articles;

  Category({
    @required this.id,
    @required this.title,
    @required this.articles,
  });
}
