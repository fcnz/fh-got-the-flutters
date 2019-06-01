import 'package:flutter_hack_project/data/category.dart';
import 'package:meta/meta.dart';

class Article {
  int id;
  String title;
  String description;
  String articleUrl;
  String imageUrl;
  int categoryId;
  MediaType mediaType;

  Article({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.articleUrl,
    @required this.imageUrl,
    @required this.categoryId,
    @required this.mediaType,
  });
}

enum MediaType { video, article, audio, discussion }
