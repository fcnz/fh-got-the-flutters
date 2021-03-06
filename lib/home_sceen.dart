import 'package:flutter/material.dart';
import 'package:flutter_hack_project/search_screen.dart';
import 'package:flutter_hack_project/section/bookmarks_setion.dart';
import 'package:flutter_hack_project/section/feed_setion.dart';
import 'package:flutter_hack_project/section/profile_setion.dart';
import 'package:flutter_hack_project/section/about_section.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    FeedSection(),
    BookmarksSection(),
    ProfileSection(),
    AboutSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Flutter'),
        actions: <Widget>[
          // Add 3 lines from here...
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              }),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Feed'),
            backgroundColor: Colors.blue, // changes all backgrounds
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.bookmark),
            title: new Text('Bookmarks'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            title: Text('About'),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
