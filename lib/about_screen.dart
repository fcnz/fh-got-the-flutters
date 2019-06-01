import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Welcome!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Text(
              'Inspired by a Google Docs spreadsheet and a prize-winning Shiny app, this app helps the Flutter community to share links to Flutter-related resources.\n\nUse the app to browse to the resources you need most: books, libraries, tutorials, Meetup groups, videos.\n',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Contribute',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Text(
              'Found something great you want to share? Great! First check to see if it is already listed. If not, add it to the appropriate category.\n\nWe appreciate it!\n',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Built by Got the Flutters for Hack19',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Text(
              'Fraser Croad, Linus WK Chan, John Graves and Nic Tolentino',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
