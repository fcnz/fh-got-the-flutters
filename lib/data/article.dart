import 'package:flutter_hack_project/data/category.dart';

class Article {
  int id;
  String title;
  String description;
  String imageUrl;
  Category category;
  MediaType mediaType;
}

enum MediaType {
  video, article, audio, discussion
}
