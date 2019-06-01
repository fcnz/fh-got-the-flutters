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
          title: "Building apps from scratch in Flutter? Welcome to the Boring Show",
          description: "Welcome to The Boring Flutter Development Show. Watch Google Engineers build apps from scratch in Flutter, including all the dead ends, blunders, and runtime errors. Instead of staring at Filip…watch him, and the rest of the Flutter team live code in the 7 episodes we’ve released so far! ",
          articleUrl: "https://www.youtube.com/watch?v=CPmN4-i9zC8&list=PLOU2XLYxmsIK0r_D-zWcmJ1plIcDNnRkK",
          imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/YouTube_play_buttom_icon_%282013-2017%29.svg/1280px-YouTube_play_buttom_icon_%282013-2017%29.svg.png",
          mediaType: MediaType.video,
        ),
        Article(
          id: 1,
          categoryId: 0,
          title: "Dart Flutter Chat App Tutorial",
          description: "In this tutorial, we build a basic cross platform native chat application using the dart flutter framework.  ",
          articleUrl: "https://www.youtube.com/watch?v=WwhyaqNtNQY&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd",
          imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/YouTube_play_buttom_icon_%282013-2017%29.svg/1280px-YouTube_play_buttom_icon_%282013-2017%29.svg.png",
          mediaType: MediaType.video,
        ),
        Article(
          id: 2,
          categoryId: 0,
          title: "Fluttery",
          description: "Fluttery is a channel dedicated to challenges and explorations using the Flutter framework.  Watch Flutter UIs and Flutter apps built right before your eyes.  Learn the Flutter and Dart APIs to build your own awesome apps.  Get excited about the future of mobile development with Flutter on the Fluttery channel!",
          articleUrl: "https://www.youtube.com/channel/UCtWyVkPpb8An90SNDTNF0Pg",
          imageUrl: "https://yt3.ggpht.com/a/AGF-l7-sP6H-W5bh32k3rBGxuJHTYNcArN1exjNhuw=s288-mo-c-c0xffffffff-rj-k-no",
          mediaType: MediaType.video,
        ),
        Article(
          id: 3,
          categoryId: 0,
          title: "Flutter",
          description: "Welcome to the official Flutter YouTube channel. Subscribe to stay up to date with best practices about the Flutter SDK. See real code examples, and watch engineers from around the world putting Flutter to work! ",
          articleUrl: "https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw",
          imageUrl: "https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s288-mo-c-c0xffffffff-rj-k-no",
          mediaType: MediaType.video,
        ),
      ],
    ),
    Category(
      id: 1,
      title: "Articles",
      articles: [
        Article(
          id: 10,
          categoryId: 1,
          title: "Ins and Outs of Flutter Web",
          description: "Last year at Flutter Live, the team announced to the world that they were working on bringing Flutter to the web. Earlier this week at Google IO, the Technical Preview of Flutter Web (formerly called Humming Bird) was made publicly available to developers for testing.",
          articleUrl: "https://medium.com/flutter-community/ins-and-outs-of-flutter-web-7a82721dc19a",
          imageUrl: "https://cdn-images-1.medium.com/max/800/1*PBu9NbYGvEKZ6wjgrKa1eA.png",
          mediaType: MediaType.article,
        ),
        Article(
          id: 11,
          categoryId: 1,
          title: "Flutter, what are Widgets, RenderObjects and Elements?",
          description: "Ever wondered how Flutter takes those widgets and actually converts them to pixels on the screen?",
          articleUrl: "https://medium.com/flutter-community/flutter-what-are-widgets-renderobjects-and-elements-630a57d05208",
          imageUrl: "https://cdn-images-1.medium.com/max/1200/0*j5RI_BysyCqCg-aQ",
          mediaType: MediaType.article,
        ),
        Article(
          id: 12,
          categoryId: 1,
          title: "Zero to One with Flutter, Part Two",
          description: "Discovering how to animate composite graphical objects in the context of a cross-platform mobile app. Join an avid concept miner in learning how to apply the tween concept to animation of structured values, exemplified by bar charts. Full code samples, batteries included.",
          articleUrl: "https://medium.com/flutter/zero-to-one-with-flutter-part-two-5aa2f06655cb",
          imageUrl: "https://cdn-images-1.medium.com/max/800/1*OSc2sFHg8KH4ZQR2ymytKg.png",
          mediaType: MediaType.article,
        ),
        Article(
          id: 13,
          categoryId: 1,
          title: "Flutter Layout Cheat Sheet",
          description: "Do you need simple layout samples for Flutter? I present you my set of Flutter layout code snippets. I will keep it short, sweet and simple with loads of visual examples.",
          articleUrl: "https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e",
          imageUrl: "https://cdn-images-1.medium.com/max/1200/1*Ktvy6_Ldzx9CjrrK3Vg9Fw.png",
          mediaType: MediaType.article,
        ),
      ],
    ),
    Category(
      id: 2,
      title: "Podcasts",
      articles: [
        Article(
          id: 20,
          categoryId: 2,
          title: "Audio1",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.audio,
        ),
        Article(
          id: 21,
          categoryId: 2,
          title: "Audio2",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.audio,
        ),
        Article(
          id: 22,
          categoryId: 2,
          title: "Audio3",
          description: "Description",
          articleUrl: "https://www.google.com",
          imageUrl: "https://i.pinimg.com/originals/3d/9e/4f/3d9e4f792038dfc496bb9176d17b940e.jpg",
          mediaType: MediaType.audio,
        ),
        Article(
          id: 23,
          categoryId: 2,
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
