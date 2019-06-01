import 'article.dart';
import 'category.dart';

class Repository {
  static List<Category> categories = [
    Category(
      id: 0,
      title: "Videos",
      articles: [
        Article(
          id: 0,
          categoryId: 0,
          title: "Video1",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.video,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Video2",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.video,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Video3",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.video,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Video4",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.video,
        ),
      ],
    ),
    Category(
      id: 1,
      title: "Articles",
      articles: [
        Article(
          id: 0,
          categoryId: 0,
          title: "Article1",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.article,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Article2",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.article,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Article3",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.article,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Article4",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.article,
        ),
      ],
    ),
    Category(
      id: 2,
      title: "Podcasts",
      articles: [
        Article(
          id: 0,
          categoryId: 0,
          title: "Audio1",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.audio,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Audio2",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.audio,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Audio3",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.audio,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Audio4",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.audio,
        ),
      ],
    ),
    Category(
      id: 3,
      title: "Discussions",
      articles: [
        Article(
          id: 0,
          categoryId: 0,
          title: "Discussion1",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.discussion,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Discussion2",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.discussion,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Discussion3",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.discussion,
        ),
        Article(
          id: 0,
          categoryId: 0,
          title: "Discussion4",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.discussion,
        ),
      ],
    ),
  ];

  static Article getArticle(int articleId) {
    for(Category category in categories) {
      for(Article article in category.articles) {
        if (article.id == articleId) return article;
      }
    }

    // default article, because returning null is evil! :P
    return categories[0].articles[0];
  }
}