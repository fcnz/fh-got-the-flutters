import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Welcome!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Text(
            'Inspired by a Google Docs spreadsheet and a prize-winning Shiny app [1,2], this app helps the Flutter community to share links to Flutter-related resources.\n\nUse the app to browse to the resources you need most: books, libraries, tutorials, Meetup groups, videos.\n',
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
          InkWell(
            child: Text("Built for Hack19",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.blue)),
            onTap: () {
              _launchURL('https://flutterhackathon.com/');
            },
          ),
          Text(
            'Got the Flutters Team:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            'Fraser Croad, Linus WK Chan, John Graves and Nic Tolentino\n\n2019 Auckland, New Zealand\n',
            style: TextStyle(fontSize: 16.0),
          ),
          InkWell(
            child: Text("1) Deep Reinforcement Learning Nanodegree Links ",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue)),
            onTap: () {
              _launchURL('https://docs.google.com/spreadsheets/d/19jUvEO82qt3itGP3mXRmaoMbVOyE6bLOp5_QwqITzaM/edit#gid=0');
            },
          ),
          InkWell(
            child: Text("2) CRAN Explorer",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue)),
            onTap: () {
              _launchURL('https://nz-stefan.shinyapps.io/cran-explorer/');
            },
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
//    const url = 'https://flutterhackathon.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
