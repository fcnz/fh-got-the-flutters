import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your Profile\n',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Text(
            'John Doe\nCoding Rock Star\n',
            style: TextStyle(fontSize: 16.0),
          ),
          InkWell(
            child: Text("LinkedIn\n",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue)),
            onTap: () {
              _launchURL('https://www.linkedin.com/');
            },
          ),
          InkWell(
            child: Text("Twitter",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue)),
            onTap: () {
              _launchURL('https://twitter.com/');
            },
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
